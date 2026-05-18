import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

enum RegisterStatus { idle, loading, success }

@freezed
abstract class RegisterState with _$RegisterState {
  const RegisterState._();

  const factory RegisterState({
    required String username,
    required String password,
    required String passwordRepeat,
    required RegisterStatus status,
    required Option<String> error,
  }) = _RegisterState;

  bool get isValid =>
      username.isNotEmpty && password.isNotEmpty && password == passwordRepeat;
}
