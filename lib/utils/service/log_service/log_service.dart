import 'package:flutter/foundation.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

showLog(Object? log) {
  if (kDebugMode) {
    print(log);
  }
}

showLogWithTag(String tag, Object? log) {
  if (kDebugMode) {
    print("$tag: $log");
  }
}

showToast(String? log) {
  if (log != null && log.isNotEmpty) {
    EasyLoading.showToast(
      log,
      duration: const Duration(seconds: 3),
    );
  }
}
