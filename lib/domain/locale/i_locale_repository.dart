import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

import 'locale_failure.dart';

abstract class ILocaleRepository {
  Future<Either<LocaleFailure, Locale>> setLocale({
    @required String languageCode,
    String countryCode,
  });

  Future<Either<LocaleFailure, Locale>> getLocale();
}
