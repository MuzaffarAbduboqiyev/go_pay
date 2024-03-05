import 'package:freezed_annotation/freezed_annotation.dart';

part 'monitoring_event.freezed.dart';

@freezed
class MonitoringEvent with _$MonitoringEvent {
  const factory MonitoringEvent.initial() = MonitoringInitialEvent;

  const factory MonitoringEvent.dateFilter({
    required bool isFrom,
    required String date,
  }) = MonitoringDateFilterEvent;

  const factory MonitoringEvent.clear() = MonitoringClearEvent;

  const factory MonitoringEvent.refresh() = MonitoringRefreshEvent;

  const factory MonitoringEvent.loadNextPage() = MonitoringLoadNextPageEvent;

  const factory MonitoringEvent.filter() = MonitoringFilterEvent;
}
