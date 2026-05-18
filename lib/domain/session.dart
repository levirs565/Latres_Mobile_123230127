import 'package:fpdart/fpdart.dart';

abstract interface class SessionRepository {
  Stream<Option<String>> getUsernameStream();
  Future<Option<String>> getUsername();
  Future<void> setUsername(Option<String> username);
}