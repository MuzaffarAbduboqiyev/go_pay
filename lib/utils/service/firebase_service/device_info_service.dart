import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';


/// Get device info
class DeviceInfoService {
  /// Get device info
  static Future<String> getDeviceInfo() async {
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    if (Platform.isIOS) {
      IosDeviceInfo iosDeviceInfo = await deviceInfo.iosInfo;
      return {
        "deviceName": iosDeviceInfo.utsname.machine,
        "deviceVersion": iosDeviceInfo.utsname.version,
        "deviceModel": iosDeviceInfo.model,
        "deviceType": "ios",
      }.toString();
    } else if (Platform.isAndroid) {
      AndroidDeviceInfo androidDeviceInfo = await deviceInfo.androidInfo;
      return {
        "deviceName": androidDeviceInfo.model,
        "deviceVersion": androidDeviceInfo.version.release,
        "deviceModel": androidDeviceInfo.model,
        "deviceType": "android",
      }.toString();
    }
    return "Device not found";
  }
}
