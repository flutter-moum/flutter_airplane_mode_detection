import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_airplane_mode_detection/flutter_airplane_mode_detection.dart';

void main() {
  const MethodChannel channel = MethodChannel('flutter_airplane_mode_detection');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await FlutterAirplaneModeDetection.platformVersion, '42');
  });
}
