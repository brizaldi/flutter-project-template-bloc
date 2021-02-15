import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/auth/user.dart';
import '../../domain/core/exceptions.dart';

abstract class IAuthRemoteDataSource {
  Future<User> signIn({
    @required String emailAddress,
    @required String password,
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
    } on Exception catch (e) {
      print(e);
      throw ServerException();
    }
  }

  @override
  Future<User> signIn({String emailAddress, String password}) {
    try {
      return Future.delayed(const Duration(seconds: 2), () {
        const userJson =
            '{"id":2,"email_address":"a@gmail.com","token":"qwerty"}';
        return User.fromJson(json.decode(userJson));
      });
    } on Exception catch (e) {
      print(e);
      throw ServerException();
    }
  }
}
