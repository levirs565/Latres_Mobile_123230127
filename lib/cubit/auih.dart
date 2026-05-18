import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:lat_res/domain/auth_service.dart';
import 'package:lat_res/domain/session.dart';

import 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  final SessionRepository _sessionRepository;
  final AuthService _authService;
  StreamSubscription? _streamSubscription;

  AuthCubit({
    required AuthService authService,
    required SessionRepository sessionRepository,
  }) : _sessionRepository = sessionRepository,
       _authService = authService,
       super(const AuthState(username: Option.none())) {
    _streamSubscription = _sessionRepository.getUsernameStream().listen((
      username,
    ) {
      emit(state.copyWith(username: username));
    });
  }

  @override
  Future<void> close() {
    _streamSubscription?.cancel();
    return super.close();
  }

  Future<void> onLogout() {
    return _authService.logout();
  }
}
