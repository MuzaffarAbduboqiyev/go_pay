import 'package:go_pay/model/response_model/response_model.dart';
import 'package:go_pay/utils/service/language_service/language_translate_extension.dart';
import 'package:go_pay/utils/service/network_service/type_parse_service.dart';

extension NetworkResponseExtension on NetworkResponseModel {
  bool get isStatus =>
      status &&
      response != null &&
      response!.data != null &&
      response!.data.containsKey("status") &&
      response!.data["status"];

  bool get resultIsList =>
      status &&
      response != null &&
      response!.data != null &&
      containsResult() &&
      response!.data["data"] is List;

  bool containsKey({required String key}) => response!.data.containsKey(key);

  bool containsResult() => response!.data.containsKey("data");

  bool innerContainsKey({
    required String key,
    required String innerKey,
  }) =>
      response!.data[key].containsKey(innerKey);

  DataResponseModel<T> dataResponseErrorHandler<T>() {
    if (status == true && response != null) {
      if (response?.data.containsKey("error") == true) {
        if (response?.data["error"] is Map &&
            response?.data["error"].containsKey("message") == true) {
          return DataResponseModel<T>.error(
            responseMessage: parseToString(
              response?.data["error"],
              "message",
            ),
          );
        } else {
          return DataResponseModel<T>.error(
            responseMessage: parseToString(
              response?.data,
              "error",
            ),
          );
        }
      } else if (response?.data.containsKey("message") == true) {
        if (response?.data["message"].containsKey("ru") == true) {
          return DataResponseModel<T>.error(
            responseMessage: parseToString(
              response?.data["message"],
              "ru",
            ),
          );
        } else {
          return DataResponseModel<T>.error(
            responseMessage: parseToString(
              response?.data,
              "message",
            ),
          );
        }
      } else {
        return DataResponseModel<T>.error(
          responseMessage: "error.unknown_error".translate,
        );
      }
    } else if (responseMessage != null) {
      return DataResponseModel<T>.error(responseMessage: responseMessage);
    } else {
      return DataResponseModel<T>.error(
        responseMessage: "error.unknown_error".translate,
      );
    }
  }

  SimpleResponseModel simpleResponseErrorHandler() {
    if (status == true && response != null) {
      if (response?.data.containsKey("error") == true) {
        return SimpleResponseModel.error(
            responseMessage: response?.data["error"]["message"]);
      } else if (response?.data.containsKey("message") == true) {
        return SimpleResponseModel.error(
            responseMessage: response?.data["message"]["ru"]);
      } else {
        return SimpleResponseModel.error(
          responseMessage: "error.unknown_error".translate,
        );
      }
    } else if (responseMessage != null) {
      return SimpleResponseModel.error(
        responseMessage: responseMessage,
      );
    } else {
      return SimpleResponseModel.error(
        responseMessage: "error.unknown_error".translate,
      );
    }
  }
}
