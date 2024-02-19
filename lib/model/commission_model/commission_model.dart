import 'package:freezed_annotation/freezed_annotation.dart';

part 'commission_model.freezed.dart';

part 'commission_model.g.dart';

@freezed
class CommissionModel with _$CommissionModel {
  const factory CommissionModel({
    @JsonKey(name: 'id', defaultValue: 0) required int? id,
    @JsonKey(name: 'min', defaultValue: 0) required double? min,
    @JsonKey(name: 'max', defaultValue: 0) required double? max,
    @JsonKey(name: 'max_verified', defaultValue: 0) required int? maxVerified,
    @JsonKey(name: 'oper_type', defaultValue: 0) required int? operationType,
    @JsonKey(name: 'com_ub_p', defaultValue: 0) required int? comUbP,
    @JsonKey(name: 'com_ub_c', defaultValue: 0) required int? comUbC,
    @JsonKey(name: 'com_mts_p', defaultValue: 0) required int? comMtsP,
    @JsonKey(name: 'com_mts_c', defaultValue: 0) required int? comMtsC,
    @JsonKey(name: 'com_partner_p', defaultValue: 0) required int? comPartnerP,
    @JsonKey(name: 'com_partner_c', defaultValue: 0) required int? comPartnerC,
    @JsonKey(name: 'rate', defaultValue: 0) required double? rate,
  }) = _CommissionModel;

  factory CommissionModel.fromJson(Map<String, dynamic>? json) =>
      _$CommissionModelFromJson(json ?? {});
}
