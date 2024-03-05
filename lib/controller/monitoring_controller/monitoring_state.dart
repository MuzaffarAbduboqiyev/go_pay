import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_pay/model/monitoring_model/monitoring_model.dart';
import 'package:go_pay/utils/service/network_service/request_service.dart';

part 'monitoring_state.freezed.dart';

@freezed
class MonitoringState with _$MonitoringState {
  const factory MonitoringState({
    required NetworkStatus screenStatus,
    required NetworkStatus paginationStatus,
    required bool isLastPage,
    required int page,
    required String from,
    required String filterFrom,
    required String to,
    required String filterTo,
    required List<MonitoringModel> monitoringList,
    required String error,
  }) = _MonitoringState;

  factory MonitoringState.initial() => const MonitoringState(
        screenStatus: NetworkStatus.initial,
        paginationStatus: NetworkStatus.initial,
        isLastPage: false,
        page: 0,
        from: '',
        filterFrom: '',
        to: '',
        filterTo: '',
        monitoringList: [],
        error: '',
      );
}
