import 'dart:convert';

import 'package:injectable/injectable.dart';

import '../../domain/auth/user.dart';
import '../../domain/core/exceptions.dart';
import '../../extra/utils/logging.dart';
import 'dto/user_dtos.dart';

abstract class IAuthRemoteDataSource {
  Future<User> signIn({
    required String emailAddress,
    required String password,
  });

  Future<void> signOut();
}

@LazySingleton(as: IAuthRemoteDataSource)
class AuthRemoteDataSource implements IAuthRemoteDataSource {
  AuthRemoteDataSource();

  @override
  Future<void> signOut() {
    try {
      return Future.delayed(const Duration(seconds: 1), () {
        return;
      });
    } catch (e, s) {
      Log.severe(e.toString());
      Log.severe(s.toString());
      throw ServerException();
    }
  }

  @override
  Future<User> signIn({
    required String emailAddress,
    required String password,
  }) {
    try {
      return Future.delayed(const Duration(seconds: 2), () {
        const jsonStr = '{"id":"2","email":"a@gmail.com","token":"qwerty"}';

        final dto = UserDto.fromJson(json.decode(jsonStr));
        return dto.toDomain();
      });
    } catch (e, s) {
      Log.severe(e.toString());
      Log.severe(s.toString());
      throw ServerException();
    }
  }
}
