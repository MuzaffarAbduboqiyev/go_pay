// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'commission_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommissionModelImpl _$$CommissionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CommissionModelImpl(
      id: json['id'] as int? ?? 0,
      min: (json['min'] as num?)?.toDouble() ?? 0,
      max: (json['max'] as num?)?.toDouble() ?? 0,
      maxVerified: json['max_verified'] as int? ?? 0,
      operationType: json['oper_type'] as int? ?? 0,
      comUbP: json['com_ub_p'] as int? ?? 0,
      comUbC: json['com_ub_c'] as int? ?? 0,
      comMtsP: json['com_mts_p'] as int? ?? 0,
      comMtsC: json['com_mts_c'] as int? ?? 0,
      comPartnerP: json['com_partner_p'] as int? ?? 0,
      comPartnerC: json['com_partner_c'] as int? ?? 0,
      rate: (json['rate'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$CommissionModelImplToJson(
        _$CommissionModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'min': instance.min,
      'max': instance.max,
      'max_verified': instance.maxVerified,
      'oper_type': instance.operationType,
      'com_ub_p': instance.comUbP,
      'com_ub_c': instance.comUbC,
      'com_mts_p': instance.comMtsP,
      'com_mts_c': instance.comMtsC,
      'com_partner_p': instance.comPartnerP,
      'com_partner_c': instance.comPartnerC,
      'rate': instance.rate,
    };
