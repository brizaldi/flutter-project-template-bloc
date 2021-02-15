part of 'locale_bloc.dart';

@freezed
abstract class LocaleState with _$LocaleState {
  const factory LocaleState.initial() = _Initial;
  const factory LocaleState.inProgress() = _InProgress;
  const factory LocaleState.success(Locale locale) = _Success;
  const factory LocaleState.failed(LocaleFailure failure) = _Failed;
}
