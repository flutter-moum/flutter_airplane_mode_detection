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

  static Future<String> detectAirplaneMode() async {
    final String airplanemode = await _channel.invokeMethod('detectAirplaneMode');
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

![IMG_8678](https://user-images.githubusercontent.com/46750574/66458000-9f560500-eaac-11e9-9d1c-8f10014493e6.PNG)

![IMG_8680](https://user-images.githubusercontent.com/46750574/66458001-9f560500-eaac-11e9-8891-61268a51bdc5.PNG)

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

[MIT](https://github.com/flutter-moum/flutter_airplane_mode_detection_/issues) License

