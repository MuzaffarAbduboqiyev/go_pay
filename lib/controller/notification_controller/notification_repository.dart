import 'package:go_pay/controller/notification_controller/notification_network_service.dart';
import 'package:go_pay/model/local_database/shared_pref/shared_pref_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class NotificationRepository {
  final NotificationNetworkService _notificationService;
  final SharedPreferencesRepository _sharedPreferencesRepository;

  NotificationRepository(
    this._notificationService,
    this._sharedPreferencesRepository,
  );

  Future<void> updateFcmToken({
    required String token,
  }) async {
    try {
      _sharedPreferencesRepository.fcmToken = token;
      final hasToken = _sharedPreferencesRepository.token.isNotEmpty;
      if (!hasToken) return;

      await _notificationService.updateNotificationToken(
        token: token,
      );
    } catch (_) {}
  }
}
