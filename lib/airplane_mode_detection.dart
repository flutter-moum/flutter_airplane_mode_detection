import 'dart:async';

import 'package:flutter/services.dart';

class AirplaneModeDetection {
  static const MethodChannel _channel =
      const MethodChannel('airplane_mode_detection');

  static Future<String> get platformVersion async =>
      (await _channel.invokeMethod('getPlatformVersion'))!;

  static Future<String> detectAirplaneMode() async =>
      (await _channel.invokeMethod('detectAirplaneMode'))!;
}
