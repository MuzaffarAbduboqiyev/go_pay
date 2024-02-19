import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_pay/utils/service/network_service/request_service.dart';

part 'receiver_state.freezed.dart';

@freezed
class ReceiverState with _$ReceiverState {
  const factory ReceiverState({
    required NetworkStatus networkStatus,
    required String receiverName,
    required String receiverCard,
    required String error,
  }) = _ReceiverState;
}
