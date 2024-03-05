import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:go_pay/controller/transfer_controller/receiver_controller/receiver_event.dart';
import 'package:go_pay/controller/transfer_controller/receiver_controller/receiver_state.dart';
import 'package:go_pay/controller/transfer_controller/transfer_repository.dart';
import 'package:go_pay/ui/widgets/dialog/loading_dialog.dart';
import 'package:go_pay/utils/service/network_service/request_service.dart';

class ReceiverBloc extends Bloc<ReceiverEvent, ReceiverState> {
  final TransferRepository transferRepository;

  ReceiverBloc(this.transferRepository)
      : super(
          const ReceiverState(
            networkStatus: NetworkStatus.initial,
            receiverCard: "",
            receiverName: "",
            error: "",
          ),
        ) {
    on<ReceiverReceiverEvent>(_onReceiver);
  }

  FutureOr<void> _onReceiver(
      ReceiverReceiverEvent event, Emitter<ReceiverState> emit) async {
    emit(
      state.copyWith(
        receiverCard: event.receiverCard,
        networkStatus: NetworkStatus.initial,
        receiverName: "",
      ),
    );

    if (event.receiverCard.length == 16) {
      emit(
        state.copyWith(
          networkStatus: NetworkStatus.loading,
        ),
      );

      final response = await transferRepository.getReceiver(
        receiverCard: event.receiverCard,
      );

      if (response.status) {
        hideLoadingDialog();
        emit(
          state.copyWith(
            receiverName: response.data!,
            networkStatus: NetworkStatus.success,
          ),
        );
      } else {
        if(response.responseMessage != null && response.responseMessage!.isNotEmpty){
          hideLoadingDialog();
        }

        emit(
          state.copyWith(
            error: response.responseMessage!,
            networkStatus: NetworkStatus.failure,
          ),
        );
      }
    }
  }
}
