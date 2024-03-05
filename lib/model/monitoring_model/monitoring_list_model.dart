import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_pay/model/monitoring_model/monitoring_model.dart';

part 'monitoring_list_model.freezed.dart';

part 'monitoring_list_model.g.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class MonitoringListModel with _$MonitoringListModel {
  const factory MonitoringListModel({
    @JsonKey(name: 'data', defaultValue: [])
    required List<MonitoringModel>? monitoringList,
  }) = _MonitoringListModel;

  factory MonitoringListModel.fromJson(Map<String, dynamic> json) =>
      _$MonitoringListModelFromJson(json);

  static MonitoringListModel? customFromJson(Map<String, dynamic>? json) =>
      json != null ? MonitoringListModel.fromJson(json) : null;
}
