// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'monitoring_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MonitoringModelImpl _$$MonitoringModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MonitoringModelImpl(
      cardNumber: json['card_number'] as String? ?? '',
      amount: (json['amount'] as num?)?.toDouble() ?? 0,
      currency: json['currency'] as int? ?? 0,
      extId: json['ext_id'] as String? ?? '',
      userId: json['user_id'] as int? ?? 0,
      createdAt: json['created_at'] as String? ?? '',
      updatedAt: json['updated_at'] as String? ?? '',
    );

Map<String, dynamic> _$$MonitoringModelImplToJson(
        _$MonitoringModelImpl instance) =>
    <String, dynamic>{
      'card_number': instance.cardNumber,
      'amount': instance.amount,
      'currency': instance.currency,
      'ext_id': instance.extId,
      'user_id': instance.userId,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
