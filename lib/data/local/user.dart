import 'package:fpdart/fpdart.dart';
import 'package:hive_ce/hive.dart';

final class LocalUser {
  final String passwordHash;

  LocalUser({required this.passwordHash});
}

const _boxName = "user";

class UserLocalDataSource {
  final Box<LocalUser> _box = Hive.box<LocalUser>(_boxName);

  static Future<void> init() async {
    await Hive.openBox<LocalUser>(_boxName);
  }

  LocalUser? getUser(String username) {
    return _box.get(username);
  }

  Future<Either<String, Unit>> addUser(String username, LocalUser user) async {
    final existingUser = getUser(username);
    if (existingUser != null) return left("User already exists");
    await _box.put(username, user);
    return right(unit);
  }
}