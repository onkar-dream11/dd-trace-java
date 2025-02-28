package datadog.trace.instrumentation.vertx_pg_client_4_2_0;

import datadog.trace.bootstrap.InstrumentationContext;
import datadog.trace.bootstrap.instrumentation.jdbc.DBInfo;
import io.vertx.pgclient.PgConnectOptions;
import io.vertx.sqlclient.SqlClient;
import net.bytebuddy.asm.Advice;

public class PgPoolImplAdvice {

  @Advice.OnMethodExit(suppress = Throwable.class)
  public static void afterCreate(
      @Advice.Return final SqlClient zis, @Advice.Argument(2) PgConnectOptions options) {
    DBInfo.Builder builder = DBInfo.DEFAULT.toBuilder();
    DBInfo info =
        builder
            .host(options.getHost())
            .port(options.getPort())
            .db(options.getDatabase())
            .user(options.getUser())
            .type("postgresql")
            .build();
    InstrumentationContext.get(SqlClient.class, DBInfo.class).put(zis, info);
  }
}
