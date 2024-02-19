import 'package:freezed_annotation/freezed_annotation.dart';

part 'amount_event.freezed.dart';

@freezed
class AmountEvent with _$AmountEvent {
  const factory AmountEvent.initial({
    required String receiverCard,
    required String receiverName,
  }) = AmountInitialEvent;

  const factory AmountEvent.changeAmount({
    required double amount,
  }) = ChangeAmountEvent;

  const factory AmountEvent.getCommission() = GetCommissionEvent;

  const factory AmountEvent.sendAmount() = SendAmountEvent;
}
