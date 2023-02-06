package datadog.trace

import com.squareup.moshi.JsonAdapter
import com.squareup.moshi.Moshi
import com.squareup.moshi.Types
import datadog.communication.ddagent.DDAgentFeaturesDiscovery
import datadog.communication.ddagent.SharedCommunicationObjects
import datadog.communication.monitor.Monitoring
import datadog.trace.agent.test.utils.PortUtils
import datadog.trace.api.IdGenerationStrategy
import datadog.trace.core.CoreTracer
import datadog.trace.test.util.DDSpecification
import okhttp3.OkHttpClient
import okhttp3.Request
import org.testcontainers.containers.FixedHostPortGenericContainer
import org.testcontainers.containers.GenericContainer
import org.testcontainers.containers.wait.strategy.Wait
import spock.lang.AutoCleanup
import spock.lang.Shared

import java.lang.reflect.Type

import static datadog.trace.api.ConfigDefaults.DEFAULT_TRACE_AGENT_PORT

class TracerConnectionReliabilityTest extends DDSpecification {
  @Shared
  OkHttpClient client
  @Shared
  JsonAdapter<List<SentTraces>> traceJsonAdapter

  int agentContainerPort
  @AutoCleanup
  CoreTracer tracer

  def setupSpec() {
    client = new OkHttpClient()
    // Create body parser for /test/traces route
    def moshi = new Moshi.Builder().build()
    Type type = Types.newParameterizedType(List, Types.newParameterizedType(List, SentTraces))
    traceJsonAdapter = moshi.adapter(type)
  }

  def setup() {
    // Pick a random port for the test agent
    agentContainerPort = PortUtils.randomOpenPort()
    // Build a tracer talking to the test agent (with the right port and traces endpoint)
    def properties = new Properties()
    properties.put("trace.agent.port", Integer.toString(agentContainerPort))
    def sharedCommunicationObjects = new SharedCommunicationObjects()
    def fixedFeaturesDiscovery = new FixedTraceEndpointFeaturesDiscovery(sharedCommunicationObjects)
    sharedCommunicationObjects.setFeaturesDiscovery(fixedFeaturesDiscovery)
    tracer = CoreTracer.builder()
      .idGenerationStrategy(IdGenerationStrategy.fromName("SEQUENTIAL"))
      .withProperties(properties)
      .sharedCommunicationObjects(sharedCommunicationObjects)
      .build()
  }

  def "test late agent start"() {
    setup:
    createSpans(10, 100)
    tracer.flush()

    when:
    def agentContainer = startTestAgentContainer()
    def noAgentCount = getTraceCount(agentContainer)
    waitForDiscoveryTimeout()

    createSpans(20, 100)
    tracer.flush()
    def withAgentCount = getTraceCount(agentContainer)
    agentContainer.stop()

    then:
    !agentContainer.running
    noAgentCount == 0
    withAgentCount == 20
  }

  def "test agent restart"() {
    setup:
    def agentContainer = startTestAgentContainer()

    when:
    createSpans(10, 100)
    tracer.flush()
    def withAgentCount = getTraceCount(agentContainer)

    then:
    withAgentCount == 10

    when:
    agentContainer.stop()
    createSpans(10, 100)
    tracer.flush()

    waitForDiscoveryTimeout()
    agentContainer = startTestAgentContainer()
    def noTraceCount = getTraceCount(agentContainer)
    createSpans(10, 100)
    tracer.flush()
    withAgentCount = getTraceCount(agentContainer)
    agentContainer.stop()

    then:
    !agentContainer.running
    noTraceCount == 0
    withAgentCount == 10
  }

  def startTestAgentContainer() {
    //noinspection GrDeprecatedAPIUsage Use FixedHostPortGenericContainer against deprecation because we need to know the exposed to configure the tracer at start
    def agentContainer = new FixedHostPortGenericContainer("ghcr.io/datadog/dd-apm-test-agent/ddapm-test-agent:latest")
      .withFixedExposedPort(agentContainerPort, DEFAULT_TRACE_AGENT_PORT)
      .waitingFor(Wait.forHttp("/test/traces"))
    agentContainer.start()
    return agentContainer
  }

  def createSpans(int count, int delay) {
    for (def index: 1..count) {
      def span = tracer.buildSpan("operation-${index}").start()
      Thread.sleep(delay)
      span.finish()
    }
  }

  static waitForDiscoveryTimeout() {
    Thread.sleep(75_000) // Discovery timeout is 1min
  }

  def getTraceCount(GenericContainer agentContainer) {
    def request = new Request.Builder()
      .url("http://${agentContainer.host}:${agentContainerPort}/test/traces")
      .build()
    def execute = client.newCall(request).execute()
    def body = execute.body().string()
    return traceJsonAdapter.fromJson(body).size()
  }

  class FixedTraceEndpointFeaturesDiscovery extends DDAgentFeaturesDiscovery {
    FixedTraceEndpointFeaturesDiscovery(SharedCommunicationObjects objects) {
      super(objects.okHttpClient, Monitoring.DISABLED, objects.agentUrl, false, false)
    }

    @Override
    String getTraceEndpoint() {
      return V4_ENDPOINT
    }
  }

  static class SentTraces {
    String name
  }
}
