import 'dart:developer';

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

  // "session": sessionId,
  Future<DataResponseModel<(String, String)>> verifyOtp({
    required String otp,
    required String phone,
  }) async {
    try {
      log("otp: $otp, phone:$phone");
      final response =
          await _networkService.postMethod(url: NetworkUrl.submitOtpUrl, body: {
        "phone_number": "+$phone",
        "password": otp,
      });
      log('response_example3: $response');

      if (response.isStatus &&
          response.containsResult() &&
          response.innerContainsKey(key: "data", innerKey: "access")) {
        return DataResponseModel.success(
          model: (
            response.response?.data["data"]["access"],
            response.response?.data["data"]["access"],
          ),
        );
      } else {
        return response.dataResponseErrorHandler<(String, String)>();
      }
    } catch (error) {
      return DataResponseModel.error(responseMessage: error.toString());
    }
  }
}
