import 'package:go_pay/controller/auth_controller/auth_network_service.dart';
import 'package:go_pay/model/local_database/shared_pref/shared_pref_repository.dart';
import 'package:go_pay/model/response_model/response_model.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class LoginRepository {
  final AuthNetworkService authNetworkService;
  final SharedPreferencesRepository sharedPreferencesRepository;

  LoginRepository(this.authNetworkService, this.sharedPreferencesRepository);

  Future<DataResponseModel<int>> login({
    required String phone,
  }) async {
    try {
      final response = await authNetworkService.login(
        phoneNumber: phone,
      );
      return response;
    } catch (e) {
      return DataResponseModel.error(
        responseMessage: e.toString(),
      );
    }
  }
}
