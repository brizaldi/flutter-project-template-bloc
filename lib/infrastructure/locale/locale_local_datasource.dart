import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

import '../../domain/core/exceptions.dart';
import '../../extra/constants/strings.dart';

abstract class ILocaleLocalDataSource {
  Future<Locale> getLocale();

  Future<void> setLocale({
    @required String languageCode,
    String countryCode,
  });
}

@LazySingleton(as: ILocaleLocalDataSource)
class LocaleLocalDataSource implements ILocaleLocalDataSource {
  LocaleLocalDataSource(this._box);

  final Box _box;

  @override
  Future<Locale> getLocale() {
    try {
      final languageCode = _box.get(Strings.languageCode);
      final countryCode = _box.get(Strings.countryCode);

      if (languageCode == null) {
        return Future.value(const Locale('en'));
      }

      return Future.value(Locale(languageCode, countryCode));
    } on Exception catch (e) {
      print(e);
      throw CacheException();
    }
  }

  @override
  Future<void> setLocale({
    @required String languageCode,
    String countryCode,
  }) {
    try {
      if (countryCode.isNotEmpty) {
        _box.put(
          Strings.countryCode,
          countryCode,
        );
      } else {
        _box.delete(Strings.countryCode);
      }

      return _box.put(
        Strings.languageCode,
        languageCode,
      );
    } on Exception catch (_) {
      throw CacheException();
    }
  }
}
