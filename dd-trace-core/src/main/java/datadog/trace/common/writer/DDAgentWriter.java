package datadog.trace.common.writer;

import static datadog.trace.api.ConfigDefaults.DEFAULT_AGENT_HOST;
import static datadog.trace.api.ConfigDefaults.DEFAULT_AGENT_TIMEOUT;
import static datadog.trace.api.ConfigDefaults.DEFAULT_AGENT_UNIX_DOMAIN_SOCKET;
import static datadog.trace.api.ConfigDefaults.DEFAULT_TRACE_AGENT_PORT;
import static datadog.trace.api.sampling.PrioritySampling.UNSET;
import static datadog.trace.common.writer.ddagent.Prioritization.FAST_LANE;

import com.timgroup.statsd.NoOpStatsDClient;
import datadog.trace.api.Config;
import datadog.trace.common.writer.ddagent.DDAgentApi;
import datadog.trace.common.writer.ddagent.DDAgentResponseListener;
import datadog.trace.common.writer.ddagent.PayloadDispatcher;
import datadog.trace.common.writer.ddagent.Prioritization;
import datadog.trace.common.writer.ddagent.TraceProcessingWorker;
import datadog.trace.core.DDSpan;
import datadog.trace.core.monitor.HealthMetrics;
import datadog.trace.core.monitor.Monitoring;
import java.util.List;
import java.util.concurrent.TimeUnit;
import lombok.extern.slf4j.Slf4j;

/**
 * This writer buffers traces and sends them to the provided DDApi instance. Buffering is done with
 * a distruptor to limit blocking the application threads. Internally, the trace is serialized and
 * put onto a separate disruptor that does block to decouple the CPU intensive from the IO bound
 * threads.
 *
 * <p>[Application] -> [trace processing buffer] -> [serialized trace batching buffer] -> [dd-agent]
 *
 * <p>Note: the first buffer is non-blocking and will discard if full, the second is blocking and
 * will cause back pressure on the trace processing (serializing) thread.
 *
 * <p>If the buffer is filled traces are discarded before serializing. Once serialized every effort
 * is made to keep, to avoid wasting the serialization effort.
 */
@Slf4j
public class DDAgentWriter implements Writer {

  private static final int BUFFER_SIZE = 1024;

  private final DDAgentApi api;
  private final TraceProcessingWorker traceProcessingWorker;
  private final PayloadDispatcher dispatcher;

  private volatile boolean closed;

  public final HealthMetrics healthMetrics;

  // Apply defaults to the class generated by lombok.
  public static class DDAgentWriterBuilder {
    String agentHost = DEFAULT_AGENT_HOST;
    int traceAgentPort = DEFAULT_TRACE_AGENT_PORT;
    String unixDomainSocket = DEFAULT_AGENT_UNIX_DOMAIN_SOCKET;
    long timeoutMillis = TimeUnit.SECONDS.toMillis(DEFAULT_AGENT_TIMEOUT);
    int traceBufferSize = BUFFER_SIZE;
    HealthMetrics healthMetrics = new HealthMetrics(new NoOpStatsDClient());
    int flushFrequencySeconds = 1;
    Monitoring monitoring = Monitoring.DISABLED;
    boolean traceAgentV05Enabled = Config.get().isTraceAgentV05Enabled();
    boolean metricsReportingEnabled = Config.get().isTracerMetricsEnabled();
  }

  @lombok.Builder
  // These field names must be stable to ensure the builder api is stable.
  private DDAgentWriter(
      final DDAgentApi agentApi,
      final String agentHost,
      final int traceAgentPort,
      final String unixDomainSocket,
      final long timeoutMillis,
      final int traceBufferSize,
      final HealthMetrics healthMetrics,
      final int flushFrequencySeconds,
      final Prioritization prioritization,
      final Monitoring monitoring,
      final boolean traceAgentV05Enabled,
      final boolean metricsReportingEnabled) {
    if (agentApi != null) {
      api = agentApi;
    } else {
      api =
          new DDAgentApi(
              String.format("http://%s:%d", agentHost, traceAgentPort),
              unixDomainSocket,
              timeoutMillis,
              traceAgentV05Enabled,
              metricsReportingEnabled,
              monitoring);
    }
    this.healthMetrics = healthMetrics;
    this.dispatcher = new PayloadDispatcher(api, healthMetrics, monitoring);
    this.traceProcessingWorker =
        new TraceProcessingWorker(
            traceBufferSize,
            healthMetrics,
            monitoring,
            dispatcher,
            null == prioritization ? FAST_LANE : prioritization,
            flushFrequencySeconds,
            TimeUnit.SECONDS);
  }

  private DDAgentWriter(
      final DDAgentApi agentApi,
      final HealthMetrics healthMetrics,
      final Monitoring monitoring,
      final TraceProcessingWorker traceProcessingWorker) {
    this.api = agentApi;
    this.healthMetrics = healthMetrics;
    this.dispatcher = new PayloadDispatcher(api, healthMetrics, monitoring);
    this.traceProcessingWorker = traceProcessingWorker;
  }

  public void addResponseListener(final DDAgentResponseListener listener) {
    api.addResponseListener(listener);
  }

  // Exposing some statistics for consumption by monitors
  public final long getCapacity() {
    return traceProcessingWorker.getCapacity();
  }

  @Override
  public void write(final List<DDSpan> trace) {
    // We can't add events after shutdown otherwise it will never complete shutting down.
    if (!closed) {
      if (trace.isEmpty()) {
        handleDroppedTrace("Trace was empty", trace);
      } else {
        final DDSpan root = trace.get(0);
        final int samplingPriority = root.context().getSamplingPriority();
        if (traceProcessingWorker.publish(samplingPriority, trace)) {
          healthMetrics.onPublish(trace, samplingPriority);
        } else {
          handleDroppedTrace("Trace written to overfilled buffer", trace, samplingPriority);
        }
      }
    } else {
      handleDroppedTrace("Trace written after shutdown.", trace);
    }
  }

  private void handleDroppedTrace(final String reason, final List<DDSpan> trace) {
    log.debug("{}. Counted but dropping trace: {}", reason, trace);
    healthMetrics.onFailedPublish(UNSET);
  }

  private void handleDroppedTrace(
      final String reason, final List<DDSpan> trace, final int samplingPriority) {
    log.debug("{}. Counted but dropping trace: {}", reason, trace);
    healthMetrics.onFailedPublish(samplingPriority);
  }

  public boolean flush() {
    if (!closed) { // give up after a second
      if (traceProcessingWorker.flush(1, TimeUnit.SECONDS)) {
        healthMetrics.onFlush(false);
        return true;
      }
    }
    return false;
  }

  public DDAgentApi getApi() {
    return api;
  }

  @Override
  public void start() {
    if (!closed) {
      traceProcessingWorker.start();
      healthMetrics.onStart((int) getCapacity());
    }
  }

  @Override
  public void close() {
    final boolean flushed = flush();
    closed = true;
    traceProcessingWorker.close();
    healthMetrics.onShutdown(flushed);
  }

  @Override
  public void incrementTraceCount() {}
}
