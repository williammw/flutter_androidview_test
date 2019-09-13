import 'dart:async';

import 'package:flutter/services.dart';

class FlutterAndroidviewTest {
  static const MethodChannel _channel =
      const MethodChannel('flutter_androidview_test');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
