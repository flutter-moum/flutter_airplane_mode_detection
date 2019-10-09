# airplane_mode_detection

------

A Flutter Plugin for Detect and Check Airplane Mode in Android and iOS

### Usage 

------

#### Use the plugin

Add the following import to your Dart code:

```dart
import 'package:airplane_mode_detection/airplane_mode_detection.dart';
import 'package:fluttertoast/fluttertoast.dart';
```

You can detect and check Airplane mode in iOS and Android

```dart
 static Future<bool> detectAirplaneMode() async {
    final bool airplaneMode =  await _channel.invokeMethod('detectAirplaneMode');
    return airplaneMode;
  }
  static Future<String> stateAirplaneMode() async {
    final String airplanemode = await _channel.invokeMethod('stateAirplaneMode');
    return airplanemode;
  }
```

------

### iOS available

iOS is available from version 12

```swift
@available(iOS 12.0, *)
public class SwiftAirplaneModeDetectionPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "airplane_mode_detection", binaryMessenger: registrar.messenger())
    let instance = SwiftAirplaneModeDetectionPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }
```

------

### ScreenShots

> ### iOS

![IMG_8675](https://user-images.githubusercontent.com/46750574/66456021-68312500-eaa7-11e9-905a-5f9d2aa3733c.PNG)

![IMG_8676](https://user-images.githubusercontent.com/46750574/66456022-68312500-eaa7-11e9-85e5-378f2ee3586f.PNG)

------

### Example

Find the example wiring in the [example app](https://github.com/flutter-moum/flutter_airplane_mode_detection_/blob/master/example/lib/main.dart)

------

### API details

~~여기에 어떤걸 넣어야할까요...~~

------

### Issues and feedback

Please file [issues](https://github.com/flutter-moum/flutter_airplane_mode_detection_/issues) to send feedback or report a bug. Thank you!

##  

------

### License