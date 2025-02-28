package datadog.trace.instrumentation.vertx_pg_client_4_2_0;

import datadog.trace.api.Pair;
import datadog.trace.bootstrap.InstrumentationContext;
import datadog.trace.bootstrap.instrumentation.api.AgentScope;
import datadog.trace.bootstrap.instrumentation.api.AgentSpan;
import io.vertx.core.AsyncResult;
import io.vertx.core.Handler;
import io.vertx.sqlclient.PreparedStatement;
import io.vertx.sqlclient.Row;
import io.vertx.sqlclient.RowSet;
import net.bytebuddy.asm.Advice;
import net.bytebuddy.implementation.bytecode.assign.Assigner;

import static datadog.trace.bootstrap.instrumentation.api.AgentTracer.*;
import static datadog.trace.instrumentation.vertx_pg_client_4_2_0.VertxSqlClientDecorator.DECORATE;

public class CursorReadAdvice {
  @Advice.OnMethodEnter(suppress = Throwable.class)
  public static AgentScope beforeRead(
      @Advice.Argument(value = 1, readOnly = false) Handler<AsyncResult<RowSet<Row>>> handler,
      @Advice.FieldValue(value = "ps", typing = Assigner.Typing.DYNAMIC)
          final PreparedStatement ps) {
    if (handler instanceof QueryResultHandlerWrapper) {
      return null;
    }
    final AgentSpan parentSpan = activeSpan();
    final AgentScope.Continuation parentContinuation =
        null == parentSpan ? null : captureSpan(parentSpan);
    final AgentSpan clientSpan =
        DECORATE.startAndDecorateSpanForStatement(
            ps, InstrumentationContext.get(PreparedStatement.class, Pair.class), true);
    if (null == clientSpan) {
      return null;
    }
    handler = new QueryResultHandlerWrapper<>(handler, clientSpan, parentContinuation);

    return activateSpan(clientSpan, true);
  }

  @Advice.OnMethodExit(onThrowable = Throwable.class, suppress = Throwable.class)
  public static void afterRead(
      @Advice.Thrown final Throwable throwable, @Advice.Enter final AgentScope clientScope) {
    if (null != clientScope) {
      clientScope.close();
    }
  }
}
