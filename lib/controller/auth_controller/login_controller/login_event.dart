import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_event.freezed.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.login({
    required String phone,
  }) = LoginSubmitEvent;

  const factory LoginEvent.changeCountry({
    required String country,
  }) = LoginCountryEvent;


}
