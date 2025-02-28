package datadog.trace.instrumentation.vertx_pg_client_4_2_0;

import static datadog.trace.agent.tooling.bytebuddy.matcher.NameMatchers.named;
import static java.util.Collections.singletonMap;
import static net.bytebuddy.matcher.ElementMatchers.*;

import com.google.auto.service.AutoService;
import datadog.trace.agent.tooling.Instrumenter;
import datadog.trace.agent.tooling.InstrumenterModule;
import java.util.Map;

@AutoService(InstrumenterModule.class)
public class CursorImplInstrumentation extends InstrumenterModule.Tracing
    implements Instrumenter.ForSingleType, Instrumenter.HasMethodAdvice {
  public CursorImplInstrumentation() {
    super("vertx", "vertx-sql-client");
  }

  @Override
  public Map<String, String> contextStore() {
    return singletonMap("io.vertx.sqlclient.PreparedStatement", "datadog.trace.api.Pair");
  }

  @Override
  public String[] helperClassNames() {
    return new String[] {
      packageName + ".QueryResultHandlerWrapper", packageName + ".VertxSqlClientDecorator",
    };
  }

  @Override
  public String instrumentedType() {
    return "io.vertx.sqlclient.impl.CursorImpl";
  }

  @Override
  public void methodAdvice(MethodTransformer transformer) {
    transformer.applyAdvice(
        isMethod()
            .and(isPublic())
            .and(named("read"))
            .and(takesArgument(1, named("io.vertx.core.Handler"))),
        packageName + ".CursorReadAdvice");
  }
}
