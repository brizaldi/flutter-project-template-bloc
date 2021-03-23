// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive/hive.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;

import '../../application/auth/auth_bloc.dart' as _i12;
import '../../application/auth/sign_in_form/sign_in_form_bloc.dart' as _i10;
import '../../application/auth/sign_out/sign_out_bloc.dart' as _i11;
import '../../domain/auth/i_auth_repository.dart' as _i8;
import '../../infrastructure/auth/auth_local_datasource.dart' as _i5;
import '../../infrastructure/auth/auth_remote_datasource.dart' as _i6;
import '../../infrastructure/auth/auth_repository.dart' as _i9;
import '../network/network_info.dart' as _i7;
import 'register_module.dart' as _i13; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i5.IAuthLocalDataSource>(
      () => _i5.AuthLocalDataSource(get<_i3.Box<dynamic>>()));
  gh.lazySingleton<_i6.IAuthRemoteDataSource>(() => _i6.AuthRemoteDataSource());
  gh.lazySingleton<_i7.NetworkInfo>(() => _i7.NetworkInfo());
  gh.lazySingleton<_i8.IAuthRepository>(() => _i9.AuthRepository(
      get<_i7.NetworkInfo>(),
      get<_i5.IAuthLocalDataSource>(),
      get<_i6.IAuthRemoteDataSource>()));
  gh.factory<_i10.SignInFormBloc>(
      () => _i10.SignInFormBloc(get<_i8.IAuthRepository>()));
  gh.factory<_i11.SignOutBloc>(
      () => _i11.SignOutBloc(get<_i8.IAuthRepository>()));
  gh.factory<_i12.AuthBloc>(() => _i12.AuthBloc(get<_i8.IAuthRepository>()));
  return get;
}

class _$RegisterModule extends _i13.RegisterModule {}
