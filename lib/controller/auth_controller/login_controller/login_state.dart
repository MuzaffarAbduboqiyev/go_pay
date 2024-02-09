import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_pay/utils/service/network_service/request_service.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    required NetworkStatus networkStatus,
    required String country,
    required MaskTextInputFormatter phoneMaskFormatter,
    required String error,
  }) = _LoginState;
}
