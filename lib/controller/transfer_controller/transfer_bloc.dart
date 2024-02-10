import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_pay/controller/transfer_controller/transfer_event.dart';
import 'package:go_pay/controller/transfer_controller/transfer_repository.dart';
import 'package:go_pay/controller/transfer_controller/transfer_state.dart';

class TransferBloc extends Bloc<TransferEvent, TransferState> {
  final TransferRepository transferRepository;

  TransferBloc(this.transferRepository)
      : super(const TransferState(
          senderPhone: "",
          receiverName: "",
          senderName: "",
          receiverPhone: "",
          amount: "",
          note: "",
          error: "",
        )) {}
}
