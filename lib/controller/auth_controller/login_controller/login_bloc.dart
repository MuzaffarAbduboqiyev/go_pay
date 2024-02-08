import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:go_pay/controller/auth_controller/login_controller/login_event.dart';
import 'package:go_pay/controller/auth_controller/login_controller/login_repository.dart';
import 'package:go_pay/controller/auth_controller/login_controller/login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginRepository loginRepository;

  LoginBloc(this.loginRepository) : super(const LoginState.initial()) {
    on<LoginSubmitEvent>(
      _onLoginSubmitEvent,
    );
  }

  FutureOr<void> _onLoginSubmitEvent(
      LoginSubmitEvent event, Emitter<LoginState> emit) async {
    if (state != const LoginState.loading() && state != const LoginState.success()) {
      emit(const LoginState.loading());

      final response = await loginRepository.login(
        phone: event.phone,
        password: event.password,
      );

      if (response.status) {
        emit(const LoginState.success());
      } else {
        emit(LoginState.error(response.responseMessage));
      }
    }
  }
}