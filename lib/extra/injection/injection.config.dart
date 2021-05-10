// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i4;
import 'package:firebase_analytics/firebase_analytics.dart' as _i5;
import 'package:flutter_local_notifications/flutter_local_notifications.dart'
    as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive/hive.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;

import '../../application/auth/auth_bloc.dart' as _i14;
import '../../application/auth/sign_in_form/sign_in_form_bloc.dart' as _i12;
import '../../application/auth/sign_out/sign_out_bloc.dart' as _i13;
import '../../domain/auth/i_auth_repository.dart' as _i10;
import '../../infrastructure/auth/auth_local_datasource.dart' as _i7;
import '../../infrastructure/auth/auth_remote_datasource.dart' as _i8;
import '../../infrastructure/auth/auth_repository.dart' as _i11;
import '../network/network_info.dart' as _i9;
import 'register_module.dart' as _i15; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i6.FlutterLocalNotificationsPlugin>(
      () => registerModule.flutterLocalNotificationsPlugin);
  gh.lazySingleton<_i7.IAuthLocalDataSource>(
      () => _i7.AuthLocalDataSource(get<_i3.Box<dynamic>>()));
  gh.lazySingleton<_i8.IAuthRemoteDataSource>(() => _i8.AuthRemoteDataSource());
  gh.lazySingleton<_i9.NetworkInfo>(() => _i9.NetworkInfo());
  gh.lazySingleton<_i10.IAuthRepository>(() => _i11.AuthRepository(
      get<_i9.NetworkInfo>(),
      get<_i7.IAuthLocalDataSource>(),
      get<_i8.IAuthRemoteDataSource>()));
  gh.factory<_i12.SignInFormBloc>(
      () => _i12.SignInFormBloc(get<_i10.IAuthRepository>()));
  gh.factory<_i13.SignOutBloc>(
      () => _i13.SignOutBloc(get<_i10.IAuthRepository>()));
  gh.factory<_i14.AuthBloc>(() => _i14.AuthBloc(get<_i10.IAuthRepository>()));
  return get;
}

class _$RegisterModule extends _i15.RegisterModule {}
