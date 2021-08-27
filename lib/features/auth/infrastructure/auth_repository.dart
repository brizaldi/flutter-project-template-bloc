import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../core/infrastructure/exceptions.dart';
import '../domain/auth_failure.dart';
import '../domain/i_auth_repository.dart';
import '../domain/value_objects.dart';
import 'auth_local_service.dart';
import 'auth_remote_service.dart';

@LazySingleton(as: IAuthRepository)
class AuthRepository implements IAuthRepository {
  AuthRepository(
    this._localService,
    this._remoteService,
  );

  final IAuthLocalService _localService;
  final IAuthRemoteService _remoteService;

  @override
  Future<bool> getSignedInStatus() async {
    final token = await _localService.getCachedToken();
    return token != null;
  }

  @override
  Future<Either<AuthFailure, Unit>> signOut() async {
    try {
      await _remoteService.signOut();
      await _localService.clearCachedToken();

      return right(unit);
    } on RestApiException catch (e) {
      return left(AuthFailure.server(
        errorCode: e.errorCode,
      ));
    }
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
          await _localService.cacheToken(token);
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
    }
  }
}
