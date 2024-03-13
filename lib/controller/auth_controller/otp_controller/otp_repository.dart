import 'dart:developer';

import 'package:go_pay/controller/auth_controller/auth_network_service.dart';
import 'package:go_pay/model/local_database/shared_pref/shared_pref_repository.dart';
import 'package:go_pay/model/response_model/response_model.dart';
import 'package:go_pay/utils/service/log_service/log_service.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class OtpRepository {
  final AuthNetworkService authNetworkService;
  final SharedPreferencesRepository sharedPreferencesRepository;

  OtpRepository(this.authNetworkService, this.sharedPreferencesRepository);

  Future<SimpleResponseModel> verifyOtp({
    required String otp,
    required String phone,
    required int sessionId,
  }) async {
    try {
      log('otp: $otp');
      log('phone: $phone');
      log('sessionId: $sessionId');
      final response = await authNetworkService.verifyOtp(
        otp: otp,
        phone: phone,
        sessionId: sessionId,
      );
      showLogWithTag("Response", response.responseMessage.toString());
      if (response.status && response.data != null) {
        sharedPreferencesRepository.token = response.data!.$1;
        sharedPreferencesRepository.refreshToken = response.data!.$2;

        return SimpleResponseModel.success();
      } else {
        return SimpleResponseModel.error(
            responseMessage: response.responseMessage);
      }
    } catch (e) {
      return SimpleResponseModel.error(responseMessage: e.toString());
    }
  }

  Future<DataResponseModel<int>> resendOtp({
    required String phone,
  }) async {
    try {
      final response = await authNetworkService.login(phoneNumber: phone);
      return response;
    } catch (e) {
      return DataResponseModel.error(
        responseMessage: e.toString(),
      );
    }
  }
}
