
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_pay/utils/service/network_service/request_service.dart';

part 'otp_state.freezed.dart';

@freezed
class OtpState with _$OtpState{
  const factory OtpState({
    required NetworkStatus networkStatus,
    required int session,
    required String phoneNumber,
    required String error,
  }) = _OtpState;

  factory OtpState.initial() => const OtpState(
    networkStatus: NetworkStatus.initial,
        session: 0,
        phoneNumber: '',
        error: '',
      );
}