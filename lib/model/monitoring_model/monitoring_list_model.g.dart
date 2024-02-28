// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'monitoring_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MonitoringListModelImpl _$$MonitoringListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MonitoringListModelImpl(
      monitoringList: (json['data'] as List<dynamic>?)
              ?.map((e) => MonitoringModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$$MonitoringListModelImplToJson(
        _$MonitoringListModelImpl instance) =>
    <String, dynamic>{
      'data': instance.monitoringList,
    };
