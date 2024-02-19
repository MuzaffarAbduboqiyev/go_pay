import 'package:freezed_annotation/freezed_annotation.dart';

part 'receiver_event.freezed.dart';

@freezed
class ReceiverEvent with _$ReceiverEvent {
  const factory ReceiverEvent.receiver({
    required String receiverCard,
  }) = ReceiverReceiverEvent;
}
