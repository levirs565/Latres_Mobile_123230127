import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:lat_res/domain/auth_service.dart';

import 'state.dart';

class LoginCubit extends Cubit<LoginState> {
  final AuthService _authService;

  LoginCubit({required AuthService authService})
    : _authService = authService,
      super(
        const LoginState(
          username: "",
          password: "",
          isLoading: false,
          error: Option.none(),
        ),
      );

  void setUsername(String username) {
    emit(state.copyWith(username: username));
  }

  void setPassword(String password) {
    emit(state.copyWith(password: password));
  }

  void onSubmit() async {
    if (state.isLoading) return;

    emit(state.copyWith(isLoading: true, error: none()));

    final result = await _authService.login(
      username: state.username,
      password: state.password,
    );

    emit(state.copyWith(error: result.getLeft(), isLoading: result.isRight()));
  }
}
