import 'dart:developer';

import 'package:go_pay/model/commission_model/commission_model.dart';
import 'package:go_pay/model/response_model/response_model.dart';
import 'package:go_pay/ui/widgets/dialog/loading_dialog.dart';
import 'package:go_pay/utils/service/network_service/network_response_extension.dart';
import 'package:go_pay/utils/service/network_service/network_urls.dart';
import 'package:go_pay/utils/service/network_service/request_service.dart';
import 'package:go_pay/utils/service/network_service/type_parse_service.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class TransferNetworkService {
  final NetworkService networkService;

  TransferNetworkService(this.networkService);

  Future<DataResponseModel<String>> getReceiver({
    required String receiverCard,
  }) async {
    try {
      log('3333333333333333: $receiverCard');
      final response = await networkService.postMethod(
        url: NetworkUrl.getReceiver,
        body: {
          "card_number": receiverCard,
        },
      );

      if (response.status &&
          response.isStatus &&
          response.containsResult() &&
          response.containsKey(key: "data") &&
          response.innerContainsKey(key: "data", innerKey: "owner")) {
        return DataResponseModel.success(
          model: parseToString(response.response?.data["data"], "owner"),
        );
      } else {
        if (response.status) {
          if (response.containsResult() &&
              response.innerContainsKey(key: "data", innerKey: "message")) {
            return DataResponseModel.error(
              responseMessage: parseToString(
                response.response?.data["data"],
                "message",
              ),
            );
          }
          return response.dataResponseErrorHandler();
        } else {
          showErrorDialog(errorMessage: response.responseMessage);
          log('5555555555: ${response.response}');
          return DataResponseModel.error(
            responseMessage: "",
          );
        }
      }
    } catch (e) {
      return DataResponseModel.error(
        responseMessage: e.toString(),
      );
    }
  }

  /// Get commissions from the server
  Future<DataResponseModel<CommissionModel>> getCommission() async {
    try {
      final response = await networkService.getMethod(
        url: NetworkUrl.commissionUrl,
      );

      if (response.isStatus && response.containsResult()) {
        return DataResponseModel.success(
          model: CommissionModel.fromJson(response.response?.data["data"]),
        );
      } else {
        return response.dataResponseErrorHandler();
      }
    } catch (e) {
      return DataResponseModel.error(
        responseMessage: e.toString(),
      );
    }
  }

  /// Create transfer link
  Future<DataResponseModel<(String, String)>> createTransferLink({
    required String receiverCard,
    required double amount,
    required int currency,
  }) async {
    try {
      final response = await networkService.postMethod(
        url: NetworkUrl.createTransferLinkUrl,
        body: {
          "card_number": receiverCard,
          "amount": amount,
          "currency": currency,
        },
      );

      if (response.isStatus &&
          response.containsResult() &&
          response.innerContainsKey(key: "data", innerKey: "transfer") &&
          response.response?.data["data"]["transfer"] != null &&
          response.response?.data["data"]["transfer"] is Map<String, dynamic> &&
          (response.response?.data["data"]["transfer"] as Map<String, dynamic>)
              .containsKey("debit") &&
          (response.response?.data["data"]["transfer"] as Map<String, dynamic>)
              .containsKey("ext_id") &&
          response.response?.data["data"]["transfer"]["debit"]
              is Map<String, dynamic> &&
          response.response?.data["data"]["transfer"]["debit"] != null &&
          response.response?.data["data"]["transfer"]["ext_id"] != null &&
          (response.response?.data["data"]["transfer"]["debit"]
                  as Map<String, dynamic>)
              .containsKey("form_url") &&
          response.response?.data["data"]["transfer"]["debit"]["form_url"] !=
              null) {
        return DataResponseModel.success(
          model: (
            parseToString(
              response.response?.data["data"]["transfer"]["debit"],
              "form_url",
            ),
            parseToString(
              response.response?.data["data"]["transfer"],
              "ext_id",
            ),
          ),
        );
      } else {
        return response.dataResponseErrorHandler();
      }
    } catch (e) {
      return DataResponseModel.error(
        responseMessage: e.toString(),
      );
    }
  }

  Future<DataResponseModel<String>> checkTransfer(
      {required String extId}) async {
    try {
      final response = await networkService.postMethod(
          url: NetworkUrl.checkTransferUrl, body: {"ext_id": extId});

      if (response.status &&
          response.isStatus &&
          response.containsResult() &&
          response.innerContainsKey(key: "data", innerKey: "transfer") &&
          response.response?.data["data"]["transfer"] != null &&
          response.response?.data["data"]["transfer"] is Map<String, dynamic> &&
          response.response?.data["data"]["transfer"].containsKey("debit") &&
          response.response?.data["data"]["transfer"]["debit"] != null &&
          response.response?.data["data"]["transfer"]["debit"]
              is Map<String, dynamic> &&
          response.response?.data["data"]["transfer"]["debit"]
              .containsKey("description") &&
          response.response?.data["data"]["transfer"]["debit"]["description"] !=
              null &&
          response.response?.data["data"]["transfer"]["debit"]["description"]
              is String) {
        if ((response.response?.data["data"]["transfer"]["debit"]["description"]
                as String)
            .contains("FAILED")) {
          return DataResponseModel.error(
            responseMessage: parseToString(
                response.response?.data["data"]["transfer"]["debit"]["message"],
                "en"),
          );
        } else {
          return DataResponseModel.success(
            model: parseToString(
              response.response?.data["data"]["transfer"]["debit"],
              "description",
            ),
          );
        }
      } else {
        return response.dataResponseErrorHandler();
      }
    } catch (e) {
      return DataResponseModel.error(
        responseMessage: e.toString(),
      );
    }
  }
}
