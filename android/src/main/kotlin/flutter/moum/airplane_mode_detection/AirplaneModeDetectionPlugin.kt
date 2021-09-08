package flutter.moum.airplane_mode_detection;

import android.content.Context
import android.os.Build
import android.provider.Settings.Global
import android.provider.Settings.System
import androidx.annotation.NonNull
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result

/** FlutterAirplaneModeDetectionPlugin */
class AirplaneModeDetectionPlugin : FlutterPlugin, MethodCallHandler {
    private lateinit var context: Context

    /// The MethodChannel that will the communication between Flutter and native Android
    ///
    /// This local reference serves to register the plugin with the Flutter Engine and unregister it
    /// when the Flutter Engine is detached from the Activity
    private lateinit var channel: MethodChannel

    override fun onAttachedToEngine(@NonNull flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
        channel = MethodChannel(flutterPluginBinding.binaryMessenger, "airplane_mode_detection")
        channel.setMethodCallHandler(this)
        context = flutterPluginBinding.applicationContext
    }

    override fun onMethodCall(@NonNull call: MethodCall, @NonNull result: Result) {
        if (call.method == "detectAirplaneMode") {
            result.success(if (isAirplaneModeOn()) "ON" else "OFF")
        } else {
            result.notImplemented()
        }
    }

    override fun onDetachedFromEngine(@NonNull binding: FlutterPlugin.FlutterPluginBinding) {
        channel.setMethodCallHandler(null)
    }


    private fun isAirplaneModeOn(): Boolean {
        if (Build.VERSION.SDK_INT < Build.VERSION_CODES.JELLY_BEAN_MR1) {
            return System.getInt(context.contentResolver, System.AIRPLANE_MODE_ON, 0) == 1
        }

        return Global.getInt(context.contentResolver, Global.AIRPLANE_MODE_ON, 0) == 1
    }
}
