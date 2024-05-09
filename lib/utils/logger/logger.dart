import 'dart:developer';

import 'package:flutter/foundation.dart';

class Logger {
  static void debug(String message, {dynamic data}) {
    if (kDebugMode) {
      log('[Resource Management DEBUG] $message : ${data ?? ''}');
    }
  }
}
