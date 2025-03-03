/*
 * Copyright The OpenTelemetry Authors
 * SPDX-License-Identifier: Apache-2.0
 */

package datadog.trace.instrumentation.logback;

import static datadog.trace.agent.tooling.bytebuddy.matcher.NameMatchers.named;
import static datadog.trace.bootstrap.instrumentation.api.AgentTracer.activeSpan;
import static datadog.trace.bootstrap.instrumentation.api.AgentTracer.traceConfig;
import static java.util.Collections.singletonMap;
import static net.bytebuddy.matcher.ElementMatchers.isMethod;
import static net.bytebuddy.matcher.ElementMatchers.isPublic;
import static net.bytebuddy.matcher.ElementMatchers.takesArgument;
import static net.bytebuddy.matcher.ElementMatchers.takesArguments;

import ch.qos.logback.classic.spi.ILoggingEvent;
import com.google.auto.service.AutoService;
import datadog.trace.agent.tooling.Instrumenter;
import datadog.trace.agent.tooling.InstrumenterModule;
import datadog.trace.bootstrap.InstrumentationContext;
import datadog.trace.bootstrap.instrumentation.api.AgentSpan;
import datadog.trace.bootstrap.instrumentation.api.AgentSpanContext;
import java.util.Map;
import net.bytebuddy.asm.Advice;

@AutoService(InstrumenterModule.class)
public class LogbackLoggerInstrumentation extends InstrumenterModule.Tracing
    implements Instrumenter.ForSingleType, Instrumenter.HasMethodAdvice {

  public LogbackLoggerInstrumentation() {
    super("logback");
  }

  @Override
  public String instrumentedType() {
    return "ch.qos.logback.classic.Logger";
  }

  @Override
  public Map<String, String> contextStore() {
    return singletonMap(
        "ch.qos.logback.classic.spi.ILoggingEvent", AgentSpanContext.class.getName());
  }

  @Override
  public void methodAdvice(MethodTransformer transformer) {
    transformer.applyAdvice(
        isMethod()
            .and(isPublic())
            .and(named("callAppenders"))
            .and(takesArguments(1))
            .and(takesArgument(0, named("ch.qos.logback.classic.spi.ILoggingEvent"))),
        LogbackLoggerInstrumentation.class.getName() + "$CallAppendersAdvice");
  }

  public static class CallAppendersAdvice {
    @Advice.OnMethodEnter
    public static void onEnter(@Advice.Argument(0) ILoggingEvent event) {
      AgentSpan span = activeSpan();

      if (span != null && traceConfig(span).isLogsInjectionEnabled()) {
        InstrumentationContext.get(ILoggingEvent.class, AgentSpanContext.class)
            .put(event, span.context());
      }
    }
  }
}
