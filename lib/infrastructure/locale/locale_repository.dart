import 'dart:ui';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import '../../domain/core/exceptions.dart';
import '../../domain/locale/i_locale_repository.dart';
import '../../domain/locale/locale_failure.dart';
import 'locale_local_datasource.dart';

@LazySingleton(as: ILocaleRepository)
class LocaleRepository implements ILocaleRepository {
  LocaleRepository(this._localDataSource);

  final ILocaleLocalDataSource _localDataSource;

  @override
  Future<Either<LocaleFailure, Locale>> getLocale() async {
    try {
      final _locale = await _localDataSource.getLocale();
      return Right(_locale);
    } on CacheException {
      return const Left(LocaleFailure.cacheError());
    }
  }

  @override
  Future<Either<LocaleFailure, Locale>> setLocale({
    @required String languageCode,
    String countryCode,
  }) async {
    try {
      await _localDataSource.setLocale(
        languageCode: languageCode,
        countryCode: countryCode,
      );
      final _locale = Locale(languageCode, countryCode);
      return Right(_locale);
    } on CacheException {
      return const Left(LocaleFailure.cacheError());
    }
  }
}
