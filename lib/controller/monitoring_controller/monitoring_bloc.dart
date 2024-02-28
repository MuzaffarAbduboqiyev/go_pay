import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:go_pay/controller/monitoring_controller/monitoring_event.dart';
import 'package:go_pay/controller/monitoring_controller/monitoring_repository.dart';
import 'package:go_pay/controller/monitoring_controller/monitoring_state.dart';
import 'package:go_pay/utils/extensions/date_extension/date_to_string_extension.dart';
import 'package:go_pay/utils/service/network_service/request_service.dart';

class MonitoringBloc extends Bloc<MonitoringEvent, MonitoringState> {
  final MonitoringRepository _repository;

  MonitoringBloc(
    this._repository,
  ) : super(MonitoringState.initial()) {
    on<MonitoringInitialEvent>(_onInitial);
    on<MonitoringDateFilterEvent>(_onDateFilter);
    on<MonitoringClearEvent>(_onClear);
    on<MonitoringRefreshEvent>(_onRefresh);
    on<MonitoringLoadNextPageEvent>(_onLoadNextPage);
    on<MonitoringFilterEvent>(_onFilter);
  }

  void _onInitial(MonitoringInitialEvent event, Emitter<MonitoringState> emit) {
    emit(
      state.copyWith(
        isLastPage: true,
        // filterFrom: "2024-02-21",
        filterFrom: DateTime.now().parseToDateTime(),
        filterTo: DateTime.now().parseToDateTime(),
        // filterTo: "2024-02-21",
        from: DateTime.now().parseToDateTime(),
        to: DateTime.now().parseToDateTime(),
        page: 0,
      ),
    );

    add(const MonitoringEvent.filter());
  }

  void _onDateFilter(
      MonitoringDateFilterEvent event, Emitter<MonitoringState> emit) {
    emit(
      state.copyWith(
        filterFrom: event.isFrom ? event.date : state.filterFrom,
        filterTo: event.isFrom
            ? (state.filterTo.isEmpty
                ? DateTime.now().parseToDateTime()
                : state.filterTo)
            : event.date,
      ),
    );
  }

  void _onClear(MonitoringClearEvent event, Emitter<MonitoringState> emit) {
    emit(
      state.copyWith(
        from: DateTime.now().parseToDateTime(),
        to: DateTime.now().parseToDateTime(),
        filterFrom: DateTime.now().parseToDateTime(),
        filterTo: DateTime.now().parseToDateTime(),
        page: 0,
        isLastPage: false,
      ),
    );

    add(const MonitoringEvent.filter());
  }

  void _onRefresh(
      MonitoringRefreshEvent event, Emitter<MonitoringState> emit) async {
    emit(
      state.copyWith(
        screenStatus: NetworkStatus.refresh,
      ),
    );
    final response = await _repository.fetchMonitoring(
      from: state.filterFrom,
      to: state.filterTo,
      page: 1,
    );

    if (response.status || state.monitoringList.isNotEmpty) {
      emit(
        state.copyWith(
          screenStatus: NetworkStatus.success,
          monitoringList: response.data ?? state.monitoringList,
          isLastPage: (response.data ?? []).isEmpty,
          page: 1,
        ),
      );
    } else {
      emit(
        state.copyWith(
          screenStatus: NetworkStatus.failure,
          error: response.responseMessage ?? "",
          monitoringList: [],
          isLastPage: true,
          page: 0,
        ),
      );
    }
  }

  void _onLoadNextPage(
      MonitoringLoadNextPageEvent event, Emitter<MonitoringState> emit) async {
    if (state.isLastPage) return;

    emit(
      state.copyWith(
        paginationStatus: NetworkStatus.loading,
      ),
    );

    final response = await _repository.fetchMonitoring(
      from: state.filterFrom,
      to: state.filterTo,
      page: state.page + 1,
    );

    if (response.status) {
      emit(
        state.copyWith(
          paginationStatus: NetworkStatus.success,
          monitoringList: state.monitoringList + (response.data ?? []),
          page: state.page + 1,
          isLastPage: (response.data ?? []).isEmpty,
        ),
      );
    } else {
      emit(
        state.copyWith(
          paginationStatus: NetworkStatus.failure,
          error: response.responseMessage ?? "",
        ),
      );
    }
  }

  FutureOr<void> _onFilter(
      MonitoringFilterEvent event, Emitter<MonitoringState> emit) async {
    emit(
      state.copyWith(
        screenStatus: NetworkStatus.loading,
        from: state.filterFrom,
        to: state.filterTo,
      ),
    );

    final response = await _repository.fetchMonitoring(
      from: state.filterFrom,
      to: state.filterTo,
      page: state.page + 1,
    );

    if (response.status) {
      emit(
        state.copyWith(
          screenStatus: NetworkStatus.success,
          monitoringList: response.data ?? [],
          page: 1,
          isLastPage: (response.data ?? []).isEmpty,
        ),
      );
    } else {
      emit(
        state.copyWith(
          screenStatus: NetworkStatus.failure,
          error: response.responseMessage ?? "",
        ),
      );
    }
  }
}
