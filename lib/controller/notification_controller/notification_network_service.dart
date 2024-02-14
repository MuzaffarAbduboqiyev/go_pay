import 'package:go_pay/utils/service/firebase_service/device_info_service.dart';
import 'package:go_pay/utils/service/network_service/network_urls.dart';
import 'package:go_pay/utils/service/network_service/request_service.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class NotificationNetworkService {
  final NetworkService _networkService;

  NotificationNetworkService(this._networkService);

  Future<void> updateNotificationToken({
    required String token,
  }) async {
    try {
      final deviceInfo = await DeviceInfoService.getDeviceInfo();

      await _networkService.postMethod(
        url: NetworkUrl.updateFcmTokenUrl,
        body: {
          "fcm_token": token,
          "device": deviceInfo,
        },
      );
    } catch (_) {}
  }
}
