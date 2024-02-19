import 'package:go_pay/model/response_model/response_model.dart';
import 'package:go_pay/utils/service/network_service/network_response_extension.dart';
import 'package:go_pay/utils/service/network_service/network_urls.dart';
import 'package:go_pay/utils/service/network_service/request_service.dart';
import 'package:go_pay/utils/service/network_service/type_parse_service.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class AuthNetworkService {
  final NetworkService _networkService;

  AuthNetworkService(this._networkService);

  Future<DataResponseModel<int>> login({
    required String phoneNumber,
  }) async {
    try {
      final response = await _networkService.postMethod(
        url: NetworkUrl.loginUrl,
        body: {
          "phone": phoneNumber,
        },
      );

      if (response.isStatus &&
          response.containsResult() &&
          response.innerContainsKey(key: "data", innerKey: "session")) {
        return DataResponseModel.success(
          model: parseToInt(response.response?.data["data"], "session"),
        );
      } else {
        return response.dataResponseErrorHandler<int>();
      }
    } catch (e) {
      return DataResponseModel.error(
        responseMessage: e.toString(),
      );
    }
  }

  Future<DataResponseModel<(String, String)>> verifyOtp({
    required String otp,
    required String phone,
    required int sessionId,
  }) async {
    try {
      final response = await _networkService.postMethod(
        url: NetworkUrl.submitOtpUrl,
        body: {
          "otp": otp,
          "session": sessionId,
          "phone": phone,
        },
      );

      if (response.isStatus &&
          response.containsResult() &&
          response.innerContainsKey(key: "data", innerKey: "access_token") &&
          response.innerContainsKey(key: "data", innerKey: "refresh_token")) {
        return DataResponseModel.success(
          model: (
            response.response?.data["data"]["access_token"],
            response.response?.data["data"]["refresh_token"],
          ),
        );
      } else {
        return response.dataResponseErrorHandler<(String, String)>();
      }
    } catch (e) {
      return DataResponseModel.error(
        responseMessage: e.toString(),
      );
    }
  }
}
