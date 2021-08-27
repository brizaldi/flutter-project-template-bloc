// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i4;
import 'package:firebase_analytics/firebase_analytics.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive_flutter/hive_flutter.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;

import '../../application/auth/auth_bloc.dart' as _i13;
import '../../application/auth/sign_in_form/sign_in_form_bloc.dart' as _i11;
import '../../application/auth/sign_out/sign_out_bloc.dart' as _i12;
import '../../domain/auth/i_auth_repository.dart' as _i9;
import '../../infrastructure/auth/auth_local_datasource.dart' as _i6;
import '../../infrastructure/auth/auth_remote_datasource.dart' as _i7;
import '../../infrastructure/auth/auth_repository.dart' as _i10;
import '../network/network_info.dart' as _i8;
import 'register_module.dart' as _i14; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  await gh.lazySingletonAsync<_i3.Box<dynamic>>(() => registerModule.openBox,
      preResolve: true);
  await gh.lazySingletonAsync<_i4.Dio>(() => registerModule.httpClient,
      preResolve: true);
  gh.lazySingleton<_i5.FirebaseAnalytics>(
      () => registerModule.firebaseAnalytics);
  gh.lazySingletonAsync<_i6.IAuthLocalDataSource>(() async =>
      _i6.AuthLocalDataSource(await get.getAsync<_i3.Box<dynamic>>()));
  gh.lazySingleton<_i7.IAuthRemoteDataSource>(() => _i7.AuthRemoteDataSource());
  gh.lazySingleton<_i8.NetworkInfo>(() => _i8.NetworkInfo());
  gh.lazySingletonAsync<_i9.IAuthRepository>(() async => _i10.AuthRepository(
      get<_i8.NetworkInfo>(),
      await get.getAsync<_i6.IAuthLocalDataSource>(),
      get<_i7.IAuthRemoteDataSource>()));
  gh.factoryAsync<_i11.SignInFormBloc>(() async =>
      _i11.SignInFormBloc(await get.getAsync<_i9.IAuthRepository>()));
  gh.factoryAsync<_i12.SignOutBloc>(
      () async => _i12.SignOutBloc(await get.getAsync<_i9.IAuthRepository>()));
  gh.factoryAsync<_i13.AuthBloc>(
      () async => _i13.AuthBloc(await get.getAsync<_i9.IAuthRepository>()));
  return get;
}

class _$RegisterModule extends _i14.RegisterModule {}
