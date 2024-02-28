import 'package:freezed_annotation/freezed_annotation.dart';

part 'monitoring_model.freezed.dart';

part 'monitoring_model.g.dart';

@freezed
class MonitoringModel with _$MonitoringModel {
  const factory MonitoringModel({
    @JsonKey(
      name: 'card_number',
      defaultValue: '',
    )
    required String cardNumber,
    @JsonKey(
      name: 'amount',
      defaultValue: 0,
    )
    required double amount,
    @JsonKey(
      name: 'currency',
      defaultValue: 0,
    )
    required int currency,
    @JsonKey(
      name: 'ext_id',
      defaultValue: "",
    )
    required String extId,
    @JsonKey(
      name: 'user_id',
      defaultValue: 0,
    )
    required int userId,
    @JsonKey(
      name: 'created_at',
      defaultValue: "",
    )
    required String createdAt,
    @JsonKey(
      name: 'updated_at',
      defaultValue: "",
    )
    required String updatedAt,
  }) = _MonitoringModel;

  factory MonitoringModel.fromJson(Map<String, dynamic> json) =>
      _$MonitoringModelFromJson(json);

  static MonitoringModel? customFromJson(Map<String, dynamic>? json) =>
      json != null ? MonitoringModel.fromJson(json) : null;
}
