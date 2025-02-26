package datadog.trace.instrumentation.vertx_pg_client_4_2_0;

import datadog.trace.api.Pair;
import datadog.trace.bootstrap.InstrumentationContext;
import io.vertx.pgclient.PgConnection;
import io.vertx.sqlclient.PreparedStatement;
import io.vertx.sqlclient.Query;
import net.bytebuddy.asm.Advice;

public class PreparedStatementQueryAdvice {
  @Advice.OnMethodExit(suppress = Throwable.class)
  public static void afterQuery(
      @Advice.This final PreparedStatement zis, @Advice.Return final Query query) {
    InstrumentationContext.get(Query.class, Pair.class)
        .put(query, InstrumentationContext.get(PreparedStatement.class, Pair.class).get(zis));
  }

  // Limit ourselves to 4.x by checking for the ping() method that was added in 4.x
  private static void muzzleCheck(PgConnection connection) {
    connection.query("SELECT 1");
  }
}
