import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState({
    required String username,
    required String password,
    required bool isLoading,
    required Option<String> error,
  }) = _LoginState;
}
