import 'dart:async';

import 'package:flutter/services.dart';

class AirplaneModeDetection {
  static const MethodChannel _channel =
      const MethodChannel('airplane_mode_detection');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Future<String> detectAirplaneMode() async {
    final String airplanemode = await _channel.invokeMethod('detectAirplaneMode');
    return airplanemode;
  }

  static Future<bool> isOnAirplaneMode() async {
    final bool isOnAirplaneMode = await _channel.invokeMethod('isOnAirplaneMode');
    return isOnAirplaneMode;
  }
}
