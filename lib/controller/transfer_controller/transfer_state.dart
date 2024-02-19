import 'package:freezed_annotation/freezed_annotation.dart';

part 'transfer_state.freezed.dart';

@freezed
class TransferState with _$TransferState {
  const factory TransferState({
    required String senderName,
    required String senderPhone,
    required String receiverName,
    required String receiverCard,
    required String amount,
    required String note,
    required String error,
  }) = _TransferState;
}
