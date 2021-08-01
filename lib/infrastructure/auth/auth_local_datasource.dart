import 'dart:convert';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

import '../../domain/auth/user.dart';
import '../../domain/core/exceptions.dart';
import '../../extra/constants/strings.dart';
import '../../extra/utils/logging.dart';
import 'dto/user_dtos.dart';

abstract class IAuthLocalDataSource {
  Future<User?> getSignedInUser();

  Future<void> cacheUser(User user);

  Future<void> clearUserData();
}

@LazySingleton(as: IAuthLocalDataSource)
class AuthLocalDataSource implements IAuthLocalDataSource {
  AuthLocalDataSource(this._box);

  final Box _box;

  @override
  Future<User?> getSignedInUser() async {
    try {
      final jsonStr = _box.get(Strings.user);
      if (jsonStr == null) return null;

      final dto = UserDto.fromJson(json.decode(jsonStr));
      return dto.toDomain();
    } on Exception catch (e, s) {
      Log.severe(e.toString());
      Log.severe(s.toString());
      throw CacheException();
    }
  }

  @override
  Future<void> clearUserData() {
    try {
      return _box.clear();
    } on Exception catch (e, s) {
      Log.severe(e.toString());
      Log.severe(s.toString());
      throw CacheException();
    }
  }

  @override
  Future<void> cacheUser(User user) {
    try {
      final dto = UserDto.fromDomain(user);
      return _box.put(
        Strings.user,
        json.encode(dto.toJson()),
      );
    } on Exception catch (e, s) {
      Log.severe(e.toString());
      Log.severe(s.toString());
      throw CacheException();
    }
  }
}
