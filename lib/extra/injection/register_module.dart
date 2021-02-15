import 'package:dio/dio.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

import '../config/configuration.dart';
import '../constants/strings.dart';

@module
abstract class RegisterModule {
  @preResolve
  @lazySingleton
  Future<Box> get openBox async {
    await Hive.initFlutter();
    return Hive.openBox<String>(Strings.appCodeName);
  }

  @preResolve
  @lazySingleton
  Future<Dio> get httpClient async {
    final options = BaseOptions(
      connectTimeout: BuildConfig.get().connectTimeout,
      receiveTimeout: BuildConfig.get().receiveTimeout,
      validateStatus: (status) {
        return true;
      },
      baseUrl: BuildConfig.get().baseUrl,
    );

    final dio = Dio(options);

    dio.interceptors.add(AuthInterceptor());

    if (BuildConfig.get().flavor != Flavor.release) {
      dio.interceptors.add(LogInterceptor(
        requestBody: true,
        responseBody: true,
      ));
    }

    return dio;
  }
}
