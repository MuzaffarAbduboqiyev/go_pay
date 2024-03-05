import 'package:freezed_annotation/freezed_annotation.dart';

part 'otp_event.freezed.dart';

@freezed
class OtpEvent with _$OtpEvent {
  const factory OtpEvent.submit({
    required String phone,
    required String otp,
  }) = OtpSubmitEvent;

  const factory OtpEvent.resend({
    required String phone,
  }) = OtpResendEvent;

  const factory OtpEvent.init({
    required int session,
    required String phone,
  }) = OtpInitEvent;
}
