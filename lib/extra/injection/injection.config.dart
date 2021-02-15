// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:hive/hive.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import '../../application/auth/auth_bloc.dart';
import '../../infrastructure/auth/auth_repository.dart';
import '../../infrastructure/auth/auth_local_datasource.dart';
import '../../infrastructure/auth/auth_remote_datasource.dart';
import '../../domain/auth/i_auth_repository.dart';
import '../../infrastructure/locale/locale_local_datasource.dart';
import '../../domain/locale/i_locale_repository.dart';
import '../../application/locale/locale_bloc.dart';
import '../../infrastructure/locale/locale_repository.dart';
import '../network/network_info.dart';
import 'register_module.dart';
import '../../application/auth/sign_in_form/sign_in_form_bloc.dart';
import '../../application/auth/sign_out/sign_out_bloc.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

Future<GetIt> $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) async {
  final gh = GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  final resolvedBox = await registerModule.openBox;
  gh.lazySingleton<Box<dynamic>>(() => resolvedBox);
  final resolvedDio = await registerModule.httpClient;
  gh.lazySingleton<Dio>(() => resolvedDio);
  gh.lazySingleton<IAuthLocalDataSource>(
      () => AuthLocalDataSource(get<Box<dynamic>>()));
  gh.lazySingleton<IAuthRemoteDataSource>(() => AuthRemoteDataSource());
  gh.lazySingleton<ILocaleLocalDataSource>(
      () => LocaleLocalDataSource(get<Box<dynamic>>()));
  gh.lazySingleton<ILocaleRepository>(
      () => LocaleRepository(get<ILocaleLocalDataSource>()));
  gh.factory<LocaleBloc>(() => LocaleBloc(get<ILocaleRepository>()));
  gh.lazySingleton<NetworkInfo>(() => NetworkInfo());
  gh.lazySingleton<IAuthRepository>(() => AuthRepository(
        get<NetworkInfo>(),
        get<IAuthLocalDataSource>(),
        get<IAuthRemoteDataSource>(),
      ));
  gh.factory<SignInFormBloc>(() => SignInFormBloc(get<IAuthRepository>()));
  gh.factory<SignOutBloc>(() => SignOutBloc(get<IAuthRepository>()));
  gh.factory<AuthBloc>(() => AuthBloc(get<IAuthRepository>()));
  return get;
}

class _$RegisterModule extends RegisterModule {}
