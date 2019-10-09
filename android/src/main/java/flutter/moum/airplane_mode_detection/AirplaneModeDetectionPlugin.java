package flutter.moum.airplane_mode_detection;

import android.os.Build;
import android.provider.Settings;

import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;
import io.flutter.plugin.common.PluginRegistry.Registrar;

/** AirplaneModeDetectionPlugin */
public class AirplaneModeDetectionPlugin implements MethodCallHandler {
  /** Plugin registration. */
  private Registrar mRegistrar;

  private AirplaneModeDetectionPlugin(Registrar registrar){
      this.mRegistrar = registrar;
  }

  public static void registerWith(Registrar registrar) {
    final MethodChannel channel = new MethodChannel(registrar.messenger(), "airplane_mode_detection");
    channel.setMethodCallHandler(new AirplaneModeDetectionPlugin(registrar));
  }

    @Override
    public void onMethodCall(MethodCall call, Result result) {
        if (call.method.equals("getPlatformVersion")) {
            result.success("Android " + android.os.Build.VERSION.RELEASE);
        }else if (call.method.equals("detectAirplaneMode")) {
            if(isAirModeOn())
                result.success("ON");
            else
                result.success("OFF");
        } else {
            result.notImplemented();
        }
    }

    private Boolean isAirModeOn() {
        Boolean isAirplaneMode;
        if(Build.VERSION.SDK_INT < Build.VERSION_CODES.JELLY_BEAN_MR1){
            isAirplaneMode = Settings.System.getInt(mRegistrar.context().getContentResolver(),
                    Settings.System.AIRPLANE_MODE_ON, 0) == 1;
        }else{
            isAirplaneMode = Settings.Global.getInt(mRegistrar.context().getContentResolver(),
                    Settings.Global.AIRPLANE_MODE_ON, 0) == 1;
        }
        return isAirplaneMode;
    }
}
