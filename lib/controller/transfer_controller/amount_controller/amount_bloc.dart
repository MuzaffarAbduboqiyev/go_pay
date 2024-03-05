import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:go_pay/controller/transfer_controller/amount_controller/amount_event.dart';
import 'package:go_pay/controller/transfer_controller/amount_controller/amount_state.dart';
import 'package:go_pay/controller/transfer_controller/transfer_repository.dart';
import 'package:go_pay/utils/service/network_service/request_service.dart';

class AmountBloc extends Bloc<AmountEvent, AmountState> {
  final TransferRepository transferRepository;

  AmountBloc(this.transferRepository) : super(AmountState.initial()) {
    on<AmountInitialEvent>(_onAmountInitialEvent);
    on<ChangeAmountEvent>(_onChangeAmountEvent);
    on<GetCommissionEvent>(_onGetCommissionEvent);
    on<SendAmountEvent>(_onSendAmountEvent);
    on<CheckTransferStatusEvent>(_onCheckTransferStatusEvent);
  }

  FutureOr<void> _onAmountInitialEvent(
      AmountInitialEvent event, Emitter<AmountState> emit) {
    emit(
      state.copyWith(
        receiverCard: event.receiverCard,
        receiverName: event.receiverName,
      ),
    );
  }

  FutureOr<void> _onChangeAmountEvent(
      ChangeAmountEvent event, Emitter<AmountState> emit) {
    emit(
      state.copyWith(
        amount: event.amount,
      ),
    );
  }

  FutureOr<void> _onGetCommissionEvent(
      GetCommissionEvent event, Emitter<AmountState> emit) async {
    if (state.networkStatus != NetworkStatus.loading) {
      emit(
        state.copyWith(
          commissionNetworkStatus: NetworkStatus.loading,
        ),
      );

      final response = await transferRepository.getCommission();

      if (response.status) {
        emit(
          state.copyWith(
            commissionModel: response.data,
            commissionNetworkStatus: NetworkStatus.success,
          ),
        );
      } else {
        emit(
          state.copyWith(
            commissionNetworkStatus: NetworkStatus.failure,
            error: response.responseMessage ?? "",
          ),
        );
      }
    }
  }

  FutureOr<void> _onSendAmountEvent(
      SendAmountEvent event, Emitter<AmountState> emit) async {
    if (state.networkStatus != NetworkStatus.loading) {
      emit(
        state.copyWith(
          networkStatus: NetworkStatus.loading,
        ),
      );

      final response = await transferRepository.createTransferLink(
        currency: 643,
        receiverCard: state.receiverCard,
        amount: state.amount,
      );

      if (response.status) {
        emit(
          state.copyWith(
            transferLink: response.data!.$1,
            extId: response.data!.$2,
            networkStatus: NetworkStatus.success,
          ),
        );
      } else {
        emit(
          state.copyWith(
            networkStatus: NetworkStatus.failure,
            error: response.responseMessage ?? "",
          ),
        );
      }
    }
  }

  FutureOr<void> _onCheckTransferStatusEvent(CheckTransferStatusEvent event, Emitter<AmountState> emit) async{
    if (state.transferNetworkStatus != NetworkStatus.loading) {
      emit(
        state.copyWith(
          transferNetworkStatus: NetworkStatus.loading,
        ),
      );

      final response = await transferRepository.checkTransferStatus(
        extId: state.extId,
      );

      if (response.status) {
        emit(
          state.copyWith(
            transferNetworkStatus: NetworkStatus.success,
          ),
        );
      } else {
        emit(
          state.copyWith(
            transferNetworkStatus: NetworkStatus.failure,
            error: response.responseMessage ?? "",
          ),
        );
      }
    }
  }
}
