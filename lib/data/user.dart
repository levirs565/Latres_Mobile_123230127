import 'package:fpdart/fpdart.dart';
import 'package:lat_res/domain/user.dart';

import 'local/user.dart';

class UserDataSource implements UserRepository {
  final UserLocalDataSource _localDataSource;

  UserDataSource({required UserLocalDataSource localDataSource})
    : _localDataSource = localDataSource;

  @override
  Future<Option<User>> getByUsername(String username) async {
    final user = _localDataSource.getUser(username);

    if (user == null) {
      return Option.none();
    }

    return Option.of(User(username: username, passwordHash: user.passwordHash));
  }

  @override
  Future<Either<String, Unit>> addUser(User user) async {
    return await _localDataSource.addUser(
      user.username,
      LocalUser(passwordHash: user.passwordHash),
    );
  }
}
