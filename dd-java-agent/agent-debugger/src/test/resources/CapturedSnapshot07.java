import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.function.Function;

public class CapturedSnapshot07 {

  private int intValue = 24;
  private final double doubleValue = 3.14;
  private String strValue = "foobar";
  private final List<String> strList = new ArrayList<>(Arrays.asList("foo", "bar"));
  private final Map<String, String> strMap = new HashMap<>();

  public static int main(String mode, String arg) {
    if (mode.equals("static")) {
      CapturedSnapshot07 cs7 = new CapturedSnapshot07();
      cs7.strValue = arg;
      return cs7.staticLambda(arg);
    }
    if (mode.equals("capturing")) {
      CapturedSnapshot07 cs7 = new CapturedSnapshot07();
      cs7.strValue = arg;
      return cs7.capturingLambda(arg);
    }
    if (mode.equals("multi")) {
      CapturedSnapshot07 cs7 = new CapturedSnapshot07();
      return cs7.multiLambda(arg);
    }
    return 0;
  }

  private int staticLambda(String arg) {
    Function<String, String> func = s -> {
      int idx = s.indexOf('@');
      if (idx >= 0) { // beae1817-f3b0-4ea8-a74f-000000000001
        return s.substring(idx);
      }
      return s.substring(0);
    };
    return func.apply(arg).length();
  }

  private int capturingLambda(String arg) {
    Function<String, String> func = s -> {
      int idx = strValue.indexOf('@');
      if (idx >= 0) { // beae1817-f3b0-4ea8-a74f-000000000002
        return strValue.substring(idx);
      }
      return strValue.substring(0);
    };
    return func.apply(arg).length();
  }

  private int multiLambda(String arg) {
    return (int)Arrays.stream(arg.split(","))
        .map(s -> s.toUpperCase()).filter(s -> s.startsWith("FOO")) // beae1817-f3b0-4ea8-a74f-000000000003
        .count();
  }
}
