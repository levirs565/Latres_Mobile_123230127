import 'package:fpdart/fpdart.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:lat_res/data/local/session.dart';
import 'package:lat_res/domain/session.dart';

class SessionDataSource implements SessionRepository {
  final SessionLocalDataSource _localDataSource;

  SessionDataSource({required SessionLocalDataSource localDataSource})
    : _localDataSource = localDataSource;

  @override
  Future<Option<String>> getUsername() async {
    return await _localDataSource.getUsername();
  }

  @override
  Stream<Option<String>> getUsernameStream() {
    return _localDataSource.getUsernameStream();
  }

  @override
  Future<void> setUsername(Option<String> username) async {
    await _localDataSource.setUsername(username);
  }
}
