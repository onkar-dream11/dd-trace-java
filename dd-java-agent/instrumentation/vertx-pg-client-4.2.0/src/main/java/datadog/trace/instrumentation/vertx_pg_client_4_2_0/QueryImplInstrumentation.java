package datadog.trace.instrumentation.vertx_pg_client_4_2_0;

import com.google.auto.service.AutoService;
import datadog.trace.agent.tooling.Instrumenter;
import datadog.trace.agent.tooling.InstrumenterModule;

import java.util.Map;

import static datadog.trace.agent.tooling.bytebuddy.matcher.NameMatchers.named;
import static java.util.Collections.singletonMap;
import static net.bytebuddy.matcher.ElementMatchers.*;

@AutoService(InstrumenterModule.class)
public class QueryImplInstrumentation extends InstrumenterModule.Tracing
    implements Instrumenter.ForSingleType, Instrumenter.HasMethodAdvice {
  public QueryImplInstrumentation() {
    super("vertx", "vertx-sql-client");
  }

  @Override
  public Map<String, String> contextStore() {
    return singletonMap("io.vertx.sqlclient.Query", "datadog.trace.api.Pair");
  }

  @Override
  public String[] helperClassNames() {
    return new String[] {
      packageName + ".QueryResultHandlerWrapper", packageName + ".VertxSqlClientDecorator",
    };
  }

  @Override
  public String instrumentedType() {
    return "io.vertx.sqlclient.impl.SqlClientBase$QueryImpl";
  }

  @Override
  public void methodAdvice(MethodTransformer transformer) {
    transformer.applyAdvice(
        isMethod()
            .and(isPublic())
            .and(named("execute"))
            .and(takesArguments(1))
            .and(takesArgument(0, named("io.vertx.core.Handler"))),
        packageName + ".QueryAdvice$Execute");
    transformer.applyAdvice(
        isMethod()
            .and(isVirtual())
            .and(named("copy"))
            .and(returns(named("io.vertx.sqlclient.impl.QueryBase"))),
        packageName + ".QueryAdvice$Copy");
  }
}
