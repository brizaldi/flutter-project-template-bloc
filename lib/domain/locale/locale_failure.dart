import 'package:freezed_annotation/freezed_annotation.dart';

part 'locale_failure.freezed.dart';

@freezed
abstract class LocaleFailure with _$LocaleFailure {
  const factory LocaleFailure.cacheError() = CacheError;
}
