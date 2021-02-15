part of 'locale_bloc.dart';

@freezed
abstract class LocaleEvent with _$LocaleEvent {
  const factory LocaleEvent.getLocale() = _GetLocale;
  const factory LocaleEvent.setLocale({
    @required String languageCode,
    String countryCode,
  }) = _SetLocale;
}
