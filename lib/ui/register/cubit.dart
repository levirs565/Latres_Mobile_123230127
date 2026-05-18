import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:lat_res/domain/auth_service.dart';
import 'package:lat_res/ui/register/state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final AuthService _authService;

  RegisterCubit({required AuthService authService})
    : _authService = authService,
      super(
        const RegisterState(
          username: "",
          password: "",
          passwordRepeat: "",
          error: Option.none(),
          status: RegisterStatus.idle,
        ),
      );

  void setUsername(String username) {
    emit(state.copyWith(username: username));
  }

  void setPassword(String password) {
    emit(state.copyWith(password: password));
  }

  void setPasswordRepeat(String passwordRepeat) {
    emit(state.copyWith(passwordRepeat: passwordRepeat));
  }

  void onSubmit() async {
    if (state.status == RegisterStatus.loading) return;

    emit(state.copyWith(status: RegisterStatus.loading, error: none()));

    final result = await _authService.register(
      username: state.username,
      password: state.password,
    );

    emit(
      state.copyWith(
        status: result.isLeft() ? RegisterStatus.idle : RegisterStatus.success,
        error: result.getLeft(),
      ),
    );
  }

  void onResetStatus() {
    emit(state.copyWith(status: RegisterStatus.idle));
  }
}
