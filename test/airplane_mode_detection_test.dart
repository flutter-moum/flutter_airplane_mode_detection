import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:airplane_mode_detection/airplane_mode_detection.dart';

void main() {
  const MethodChannel channel = MethodChannel('airplane_mode_detection');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await AirplaneModeDetection.platformVersion, '42');
  });
}
