package datadog.trace.instrumentation.grpc.client;

import datadog.context.propagation.CarrierSetter;
import io.grpc.Metadata;
import javax.annotation.ParametersAreNonnullByDefault;

@ParametersAreNonnullByDefault
public final class GrpcInjectAdapter implements CarrierSetter<Metadata> {
  public static final GrpcInjectAdapter SETTER = new GrpcInjectAdapter();

  @Override
  public void set(final Metadata carrier, final String key, final String value) {
    carrier.put(Metadata.Key.of(key, Metadata.ASCII_STRING_MARSHALLER), value);
  }
}
