import 'dart:convert';

import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

import '../../domain/auth/user.dart';
import '../../domain/core/exceptions.dart';
import '../../extra/constants/strings.dart';

abstract class IAuthLocalDataSource {
  Future<User> getSignedInUser();

  Future<void> cacheUser(User user);

  Future<void> clearUserData();
}

@LazySingleton(as: IAuthLocalDataSource)
class AuthLocalDataSource implements IAuthLocalDataSource {
  AuthLocalDataSource(this._box);

  final Box _box;

  @override
  Future<User> getSignedInUser() async {
    try {
      final jsonStr = _box.get(Strings.user);
      if (jsonStr == null) return null;

      return User.fromJson(json.decode(jsonStr));
    } on Exception catch (e) {
      print(e);
      throw CacheException();
    }
  }

  @override
  Future<void> clearUserData() {
    try {
      return _box.clear();
    } on Exception catch (e) {
      print(e);
      throw CacheException();
    }
  }

  @override
  Future<void> cacheUser(User user) {
    try {
      return _box.put(
        Strings.user,
        json.encode(user.toJson()),
      );
    } on Exception catch (_) {
      throw CacheException();
    }
  }
}
