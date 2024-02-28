import 'package:go_pay/controller/monitoring_controller/monitoring_network_service.dart';
import 'package:go_pay/model/monitoring_model/monitoring_model.dart';
import 'package:go_pay/model/response_model/response_model.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class MonitoringRepository {
  final MonitoringNetworkService _networkService;

  MonitoringRepository(this._networkService);

  Future<DataResponseModel<List<MonitoringModel>>> fetchMonitoring({
    required String from,
    required String to,
    required int page,
  }) =>
      _networkService.fetchMonitoring(
        from: from,
        to: to,
        page: page,
      );
}
