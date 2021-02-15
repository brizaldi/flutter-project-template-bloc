import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/locale/i_locale_repository.dart';
import '../../domain/locale/locale_failure.dart';

part 'locale_bloc.freezed.dart';
part 'locale_event.dart';
part 'locale_state.dart';

@injectable
class LocaleBloc extends Bloc<LocaleEvent, LocaleState> {
  LocaleBloc(this._localeRepository) : super(const _Initial());

  final ILocaleRepository _localeRepository;

  @override
  Stream<LocaleState> mapEventToState(
    LocaleEvent event,
  ) async* {
    yield* event.map(
      getLocale: (e) async* {
        yield const LocaleState.inProgress();
        final either = await _localeRepository.getLocale();
        yield either.fold(
          (failure) => LocaleState.failed(failure),
          (locale) => LocaleState.success(locale),
        );
      },
      setLocale: (e) async* {
        yield const LocaleState.inProgress();
        final either = await _localeRepository.setLocale(
          languageCode: e.languageCode,
          countryCode: e.countryCode,
        );
        yield either.fold(
          (failure) => LocaleState.failed(failure),
          (locale) => LocaleState.success(locale),
        );
      },
    );
  }
}
