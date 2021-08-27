import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../domain/auth/auth_failure.dart';
import '../../domain/auth/i_auth_repository.dart';
import '../../domain/auth/user.dart';
import '../../domain/auth/value_objects.dart';
import '../../domain/core/exceptions.dart';
import '../../extra/network/network_info.dart';
import 'auth_local_datasource.dart';
import 'auth_remote_datasource.dart';

@LazySingleton(as: IAuthRepository)
class AuthRepository implements IAuthRepository {
  AuthRepository(
    this._networkInfo,
    this._localDataSource,
    this._remoteDataSource,
  );

  final NetworkInfo _networkInfo;
  final IAuthLocalDataSource _localDataSource;
  final IAuthRemoteDataSource _remoteDataSource;

  @override
  Future<Either<AuthFailure, Option<User>>> getSignedInUser() async {
    try {
      final _user = await _localDataSource.getSignedInUser();
      return right(optionOf(_user));
    } on CacheException {
      return left(const AuthFailure.cacheError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signOut() async {
    if (await _networkInfo.isConnected()) {
      try {
        await _remoteDataSource.signOut();
        await _localDataSource.clearUserData();

        return right(unit);
      } on ServerException {
        return left(const AuthFailure.serverError());
      } on CacheException {
        return left(const AuthFailure.cacheError());
      }
    } else {
      return left(const AuthFailure.noConnectionError());
    }
  }

  @override
  Future<Either<AuthFailure, User>> registerWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  }) async {
    // TODO: implement registerWithEmailAndPassword
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthFailure, User>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  }) async {
    if (await _networkInfo.isConnected()) {
      try {
        final emailAddressStr = emailAddress.getOrCrash();
        final passwordStr = password.getOrCrash();

        final userDto = await _remoteDataSource.signIn(
          emailAddress: emailAddressStr,
          password: passwordStr,
        );

        await _localDataSource.cacheUser(userDto);

        return right(userDto.toDomain());
      } on ServerException {
        return left(const AuthFailure.serverError());
      } on CacheException {
        return left(const AuthFailure.cacheError());
      }
    } else {
      return left(const AuthFailure.noConnectionError());
    }
  }
}
