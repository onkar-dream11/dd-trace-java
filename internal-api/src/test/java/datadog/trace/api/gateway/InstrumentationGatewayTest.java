package datadog.trace.api.gateway;

import static org.assertj.core.api.Assertions.assertThat;
import static org.assertj.core.api.Assertions.assertThatThrownBy;

import datadog.trace.api.Function;
import datadog.trace.api.function.Supplier;
import org.assertj.core.api.ThrowableAssert;
import org.junit.Before;
import org.junit.Test;

public class InstrumentationGatewayTest {

  private InstrumentationGateway gateway;
  private RequestContext context;
  private Supplier<Flow<RequestContext>> callback;
  private Subscription subscription;

  @Before
  public void setUp() {
    gateway = new InstrumentationGateway();
    context = new RequestContext() {};
    callback =
        new Supplier<Flow<RequestContext>>() {
          @Override
          public Flow<RequestContext> get() {
            return new Flow.ResultFlow<>(context);
          }
        };
    subscription = gateway.registerCallback(Events.REQUEST_STARTED, callback);
  }

  @Test
  public void testGetCallback() {
    // check event without registered callback
    assertThat(gateway.getCallback(Events.REQUEST_ENDED)).isNull();
    // check event with registered callback
    Supplier<Flow<RequestContext>> cback = gateway.getCallback(Events.REQUEST_STARTED);
    assertThat(cback).isEqualTo(callback);
    Flow<RequestContext> flow = cback.get();
    assertThat(flow.getAction()).isNull();
    RequestContext ctxt = flow.getResult();
    assertThat(ctxt).isEqualTo(context);
  }

  @Test
  public void testRegisterCallback() {
    // check event without registered callback
    assertThat(gateway.getCallback(Events.REQUEST_ENDED)).isNull();
    // check event with registered callback
    assertThat(gateway.getCallback(Events.REQUEST_STARTED)).isEqualTo(callback);
    // check that we can register a callback
    Function<RequestContext, Flow<Void>> cb =
        new Function<RequestContext, Flow<Void>>() {
          @Override
          public Flow<Void> apply(RequestContext input) {
            return new Flow.ResultFlow<>(null);
          }
        };
    Subscription s = gateway.registerCallback(Events.REQUEST_ENDED, cb);
    assertThat(gateway.getCallback(Events.REQUEST_ENDED)).isEqualTo(cb);
    // check that we can cancel a callback
    subscription.cancel();
    assertThat(gateway.getCallback(Events.REQUEST_STARTED)).isNull();
    // check that we didn't remove the other callback
    assertThat(gateway.getCallback(Events.REQUEST_ENDED)).isEqualTo(cb);
  }

  @Test
  public void testDoubleRegistration() {
    // check event with registered callback
    assertThat(gateway.getCallback(Events.REQUEST_STARTED)).isEqualTo(callback);
    // check that we can't overwrite the callback
    assertThatThrownBy(
            new ThrowableAssert.ThrowingCallable() {
              @Override
              public void call() throws Throwable {
                gateway.registerCallback(Events.REQUEST_STARTED, callback);
              }
            })
        .isInstanceOf(IllegalStateException.class)
        .hasMessageStartingWith("Trying to overwrite existing callback ")
        .hasMessageContaining(Events.REQUEST_STARTED.toString());
  }

  @Test
  public void testDoubleCancel() {
    // check event with registered callback
    assertThat(gateway.getCallback(Events.REQUEST_STARTED)).isEqualTo(callback);
    // check that we can cancel a callback
    subscription.cancel();
    assertThat(gateway.getCallback(Events.REQUEST_STARTED)).isNull();
    // check that we can cancel a callback
    subscription.cancel();
    assertThat(gateway.getCallback(Events.REQUEST_STARTED)).isNull();
  }

  @Test
  public void testNoopAction() {
    assertThat(Flow.Action.Noop.INSTANCE.isBlocking()).isFalse();
  }

  @Test
  public void testThrownAction() {
    Flow.Action.Throw thrown = new Flow.Action.Throw(new Exception("my message"));
    assertThat(thrown.isBlocking()).isTrue();
    assertThat(thrown.getBlockingException().getMessage()).isEqualTo("my message");
  }

  @Test
  public void testReplacedArgumentsAction() {
    Flow.Action.ReplacedArguments replacedArguments =
        new Flow.Action.ReplacedArguments(new Object[] {"new arg"}, true);
    assertThat(replacedArguments.isBlocking()).isTrue();
    assertThat(replacedArguments.getNewArguments()[0]).isEqualTo("new arg");
    replacedArguments = new Flow.Action.ReplacedArguments(new Object[] {"new arg"}, false);
    assertThat(replacedArguments.isBlocking()).isFalse();
  }

  @Test
  public void test() {
    Flow.Action.ForcedReturnValue forcedReturnValue =
        new Flow.Action.ForcedReturnValue("new retval", true);
    assertThat(forcedReturnValue.getRetVal()).isEqualTo("new retval");
    assertThat(forcedReturnValue.isBlocking()).isTrue();

    forcedReturnValue = new Flow.Action.ForcedReturnValue("new retval", false);
    assertThat(forcedReturnValue.isBlocking()).isFalse();
  }
}
