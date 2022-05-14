import 'package:dio/dio.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../config/configuration.dart';
import '../constants/strings.dart';

@module
abstract class RegisterModule {
  @lazySingleton
  FlutterSecureStorage get flutterSecureStorage {
    return const FlutterSecureStorage();
  }

  @preResolve
  @lazySingleton
  Future<Box<dynamic>> get openBox async {
    await Hive.initFlutter();
    return Hive.openBox<String>(Strings.appCodeName);
  }

  @preResolve
  @lazySingleton
  Future<Dio> get httpClient async {
    final dio = Dio();

    if (BuildConfig.get().flavor != Flavor.release) {
      dio.interceptors.add(PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
      ));
    }

    return dio;
  }

  @lazySingleton
  FirebaseAnalytics get firebaseAnalytics => FirebaseAnalytics.instance;
}
