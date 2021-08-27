import 'dart:convert';

import 'package:injectable/injectable.dart';

import '../../domain/core/exceptions.dart';
import '../../extra/utils/logging.dart';
import 'dto/user_dto.dart';

abstract class IAuthRemoteDataSource {
  Future<UserDTO> signIn({
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
  Future<UserDTO> signIn({
    required String emailAddress,
    required String password,
  }) {
    try {
      return Future.delayed(const Duration(seconds: 2), () {
        const jsonStr = '{"id":"2","email":"a@gmail.com","token":"qwerty"}';
        final decodedJson = jsonDecode(jsonStr) as Map<String, dynamic>;
        final convertedData = UserDTO.fromJson(decodedJson);

        return convertedData;
      });
    } catch (e, s) {
      Log.severe(e.toString());
      Log.severe(s.toString());
      throw ServerException();
    }
  }
}
