import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

import '../../core/infrastructure/exceptions.dart';
import '../domain/auth_failure.dart';
import '../domain/i_auth_repository.dart';
import '../domain/value_objects.dart';
import 'auth_remote_service.dart';
import 'credentials_storage/credentials_storage.dart';

@LazySingleton(as: IAuthRepository)
class AuthRepository implements IAuthRepository {
  AuthRepository(
    this._credentialsStorage,
    this._remoteService,
  );

  final CredentialsStorage _credentialsStorage;
  final IAuthRemoteService _remoteService;

  @override
  Future<bool> isSignedIn() =>
      getSignedInCredentials().then((credentials) => credentials != null);

  @override
  Future<Either<AuthFailure, Unit>> signOut() async {
    try {
      await _remoteService.signOut();
    } on RestApiException catch (e) {
      return left(AuthFailure.server(errorCode: e.errorCode));
    } on NoConnectionException {
      // Ignoring
    }

    return _clearCredentialsStorage();
  }

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required Email email,
    required Password password,
  }) async {
    // TODO: implement registerWithEmailAndPassword
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required Email email,
    required Password password,
  }) async {
    try {
      final emailStr = email.getOrCrash();
      final passwordStr = password.getOrCrash();

      final authResponse = await _remoteService.signIn(
        email: emailStr,
        password: passwordStr,
      );

      return authResponse.when(
        withToken: (token) async {
          await _credentialsStorage.save(token);
          return right(unit);
        },
        noConnection: () => left(const AuthFailure.noConnection()),
        failure: (errorCode, message) => left(AuthFailure.server(
          errorCode: errorCode,
          message: message,
        )),
      );
    } on RestApiException catch (e) {
      return left(AuthFailure.server(
        errorCode: e.errorCode,
      ));
    } on NoConnectionException {
      return left(const AuthFailure.noConnection());
    }
  }

  @override
  Future<String?> getSignedInCredentials() async {
    try {
      final storedCredentials = await _credentialsStorage.read();

      return storedCredentials;
    } on PlatformException {
      return null;
    }
  }

  Future<Either<AuthFailure, Unit>> _clearCredentialsStorage() async {
    try {
      await _credentialsStorage.clear();
      return right(unit);
    } on PlatformException {
      return left(const AuthFailure.storage());
    }
  }
}
