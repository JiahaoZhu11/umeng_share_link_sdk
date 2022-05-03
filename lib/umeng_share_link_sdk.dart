
import 'dart:async';

import 'package:flutter/services.dart';

class UmengShareLinkSdk {
  static const MethodChannel _channel = MethodChannel('umeng_share_link_sdk');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
