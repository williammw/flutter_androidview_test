import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_androidview_test/flutter_androidview_test.dart';

void main() {
  const MethodChannel channel = MethodChannel('flutter_androidview_test');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await FlutterAndroidviewTest.platformVersion, '42');
  });
}
