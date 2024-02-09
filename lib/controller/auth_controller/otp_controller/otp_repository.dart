import 'package:go_pay/controller/auth_controller/auth_network_service.dart';
import 'package:go_pay/model/local_database/shared_pref/shared_pref_repository.dart';
import 'package:go_pay/model/response_model/response_model.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class OtpRepository {
  final AuthNetworkService authNetworkService;
  final SharedPreferencesRepository sharedPreferencesRepository;

  OtpRepository(this.authNetworkService, this.sharedPreferencesRepository);

  Future<SimpleResponseModel> verifyOtp({
    required String otp,
  }) async {
    sharedPreferencesRepository.token = "Muzaffar";
    await Future.delayed(const Duration(seconds: 3));
    return SimpleResponseModel.success();
  }

  Future<SimpleResponseModel> resendOtp() async {
    await Future.delayed(const Duration(seconds: 3));
    return SimpleResponseModel.success();
  }
}
