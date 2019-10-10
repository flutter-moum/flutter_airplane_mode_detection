# airplane_mode_detection

------

[![Pub](https://img.shields.io/pub/v/airplane_mode_detection.svg)](https://pub.dev/packages/airplane_mode_detection)

A Flutter Plugin for Detecting the Airplane Mode in Android and iOS

### Usage 

------

#### Use the plugin

Add the following import to your Dart code:

```dart
import 'package:airplane_mode_detection/airplane_mode_detection.dart';
import 'package:fluttertoast/fluttertoast.dart';
```

In order to detect the airplane mode, use ```AirplaneModeDetection.detectAirplaneMode()``` as below.  
You will get the return value 'ON' or 'OFF'.

```dart
String state = await AirplaneModeDetection.detectAirplaneMode();
```
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
<kbd> ![IMG_8678](https://user-images.githubusercontent.com/46750574/66458000-9f560500-eaac-11e9-9d1c-8f10014493e6.PNG)</kbd>
<kbd>![IMG_8680](https://user-images.githubusercontent.com/46750574/66458001-9f560500-eaac-11e9-8891-61268a51bdc5.PNG)</kbd>

------

### Example

Find the example wiring in the [example app](https://github.com/flutter-moum/flutter_airplane_mode_detection_/blob/master/example/lib/main.dart)

------

### API details

See the [airplane_mode_detection.dart](https://github.com/flutter-moum/flutter_airplane_mode_detection/blob/master/lib/airplane_mode_detection.dart) for more API details.

------

### Issues and feedback

Please file [issues](https://github.com/flutter-moum/flutter_airplane_mode_detection_/issues) to send feedback or report a bug. Thank you!

##  

------

### License

[MIT](https://github.com/flutter-moum/flutter_airplane_mode_detection_/issues) License

