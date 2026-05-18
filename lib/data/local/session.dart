import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _keyUsername = "username";

class SessionLocalDataSource {
  final _changedStream = StreamController<Option<String>>.broadcast();
  final _sharedPreference = SharedPreferencesAsync();

  Future<Option<String>> getUsername() async {
    return Option.fromNullable(await _sharedPreference.getString(_keyUsername));
  }

  Future<void> setUsername(Option<String> username) async {
    await username.match(
          () => _sharedPreference.remove(_keyUsername),
          (username) => _sharedPreference.setString(_keyUsername, username),
    );
    _changedStream.add(username);
  }

  Stream<Option<String>> getUsernameStream() async* {
    yield await getUsername();
    yield* _changedStream.stream;
  }
}