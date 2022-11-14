package datadog.trace.api;

import java.util.concurrent.ThreadLocalRandom;
import java.util.concurrent.atomic.AtomicLong;

public enum IdGenerationStrategy {
  RANDOM {
    @Override
    public DDTraceId generateTraceId() {
      return DDTraceId.from(ThreadLocalRandom.current().nextLong(1, Long.MAX_VALUE));
    }

    @Override
    public long generateSpanId() {
      return ThreadLocalRandom.current().nextLong(1, Long.MAX_VALUE);
    }
  },
  SEQUENTIAL {
    private final AtomicLong id = new AtomicLong(0);

    @Override
    public DDTraceId generateTraceId() {
      return DDTraceId.from(id.incrementAndGet());
    }

    @Override
    public long generateSpanId() {
      return id.incrementAndGet();
    }
  };

  public abstract DDTraceId generateTraceId();

  public abstract long generateSpanId();
}
