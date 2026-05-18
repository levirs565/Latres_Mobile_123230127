import 'dart:async';

import 'package:bcrypt/bcrypt.dart';
import 'package:fpdart/fpdart.dart';
import 'package:lat_res/domain/session.dart';
import 'package:lat_res/domain/user.dart';

class AuthService {
  final UserRepository _userRepository;
  final SessionRepository _sessionRepository;

  AuthService({
    required UserRepository userRepository,
    required SessionRepository sessionRepository,
  }) : _userRepository = userRepository,
       _sessionRepository = sessionRepository;

  Future<Either<String, Unit>> register({
    required String username,
    required String password,
  }) async {
    if ((await _sessionRepository.getUsername()).isSome()) {
      return left("Already logged in");
    }

    return await _userRepository.addUser(
      User(
        username: username,
        passwordHash: BCrypt.hashpw(password, BCrypt.gensalt()),
      ),
    );
  }

  Future<Either<String, Unit>> login({
    required String username,
    required String password,
  }) async {
    if ((await _sessionRepository.getUsername()).isSome()) {
      return left("Already logged in");
    }

    final userOption = await _userRepository.getByUsername(username);

    if (userOption is None) {
      return left("User not found");
    }

    final user = userOption.getOrElse(() => throw Exception());
    if (!BCrypt.checkpw(password, user.passwordHash)) {
      return left("Wrong password");
    }

    await _sessionRepository.setUsername(Some(user.username));

    return right(unit);
  }

  Future<Either<String, Unit>> logout() async {
    if ((await _sessionRepository.getUsername()).isNone()) {
      return left("Not logged in");
    }

    await _sessionRepository.setUsername(none());

    return right(unit);
  }
}
