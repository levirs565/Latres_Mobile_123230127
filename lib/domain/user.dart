import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
abstract class User with _$User {
  const factory User({required String username, required String passwordHash}) =
      _User;
}

abstract interface class UserRepository {
  Future<Either<String, Unit>> addUser(User user);

  Future<Option<User>> getByUsername(String username);
}
