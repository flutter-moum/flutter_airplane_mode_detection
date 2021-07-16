
import 'dart:async';

import 'package:flutter/services.dart';

class FlutterAirplaneModeDetection {
  static const MethodChannel _channel =
      const MethodChannel('flutter_airplane_mode_detection');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
