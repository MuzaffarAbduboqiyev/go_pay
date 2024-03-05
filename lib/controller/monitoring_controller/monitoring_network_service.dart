import 'package:go_pay/model/monitoring_model/monitoring_list_model.dart';
import 'package:go_pay/model/monitoring_model/monitoring_model.dart';
import 'package:go_pay/model/response_model/response_model.dart';
import 'package:go_pay/utils/extensions/date_extension/date_to_string_extension.dart';
import 'package:go_pay/utils/extensions/date_extension/string_to_date_extension.dart';
import 'package:go_pay/utils/service/log_service/log_service.dart';
import 'package:go_pay/utils/service/network_service/network_response_extension.dart';
import 'package:go_pay/utils/service/network_service/network_urls.dart';
import 'package:go_pay/utils/service/network_service/request_service.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class MonitoringNetworkService {
  final NetworkService _networkService;

  MonitoringNetworkService(this._networkService);

  Future<DataResponseModel<List<MonitoringModel>>> fetchMonitoring({
    required String from,
    required String to,
    required int page,
  }) async {
    showLogWithTag("DDD", from);
    showLogWithTag("DDD", to);
    showLogWithTag("DDD", page);
    showLogWithTag("DDD", from);

    try {
      final response = await _networkService.postMethod(
        url: NetworkUrl.monitoringUrl,
        body: {
          if (from.isNotEmpty)
            "day": from.parseToDateTime().parseToFilterFormat(),
          if (to.isNotEmpty)
            "date": from.parseToDateTime().parseToFilterFormat(),
          "page": page,
        },
      );

      if (response.status &&
          response.containsKey(key: "results") &&
          response.innerContainsKey(key: "results", innerKey: "data") &&
          response.response?.data["results"]["data"] != null &&
          response.response?.data["results"]["data"] is List) {
        final monitoring =
            MonitoringListModel.fromJson(response.response?.data["results"]);

        return DataResponseModel.success(model: monitoring.monitoringList);
      } else {
        showLogWithTag("error", "Thms");
        return response.dataResponseErrorHandler();
      }
    } catch (e) {
      showLogWithTag("error", e.toString());
      return DataResponseModel.error(responseMessage: e.toString());
    }
  }
}
