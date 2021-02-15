// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'locale_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$LocaleEventTearOff {
  const _$LocaleEventTearOff();

// ignore: unused_element
  _GetLocale getLocale() {
    return const _GetLocale();
  }

// ignore: unused_element
  _SetLocale setLocale({@required String languageCode, String countryCode}) {
    return _SetLocale(
      languageCode: languageCode,
      countryCode: countryCode,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $LocaleEvent = _$LocaleEventTearOff();

/// @nodoc
mixin _$LocaleEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getLocale(),
    @required TResult setLocale(String languageCode, String countryCode),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getLocale(),
    TResult setLocale(String languageCode, String countryCode),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getLocale(_GetLocale value),
    @required TResult setLocale(_SetLocale value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getLocale(_GetLocale value),
    TResult setLocale(_SetLocale value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $LocaleEventCopyWith<$Res> {
  factory $LocaleEventCopyWith(
          LocaleEvent value, $Res Function(LocaleEvent) then) =
      _$LocaleEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LocaleEventCopyWithImpl<$Res> implements $LocaleEventCopyWith<$Res> {
  _$LocaleEventCopyWithImpl(this._value, this._then);

  final LocaleEvent _value;
  // ignore: unused_field
  final $Res Function(LocaleEvent) _then;
}

/// @nodoc
abstract class _$GetLocaleCopyWith<$Res> {
  factory _$GetLocaleCopyWith(
          _GetLocale value, $Res Function(_GetLocale) then) =
      __$GetLocaleCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetLocaleCopyWithImpl<$Res> extends _$LocaleEventCopyWithImpl<$Res>
    implements _$GetLocaleCopyWith<$Res> {
  __$GetLocaleCopyWithImpl(_GetLocale _value, $Res Function(_GetLocale) _then)
      : super(_value, (v) => _then(v as _GetLocale));

  @override
  _GetLocale get _value => super._value as _GetLocale;
}

/// @nodoc
class _$_GetLocale implements _GetLocale {
  const _$_GetLocale();

  @override
  String toString() {
    return 'LocaleEvent.getLocale()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetLocale);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getLocale(),
    @required TResult setLocale(String languageCode, String countryCode),
  }) {
    assert(getLocale != null);
    assert(setLocale != null);
    return getLocale();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getLocale(),
    TResult setLocale(String languageCode, String countryCode),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getLocale != null) {
      return getLocale();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getLocale(_GetLocale value),
    @required TResult setLocale(_SetLocale value),
  }) {
    assert(getLocale != null);
    assert(setLocale != null);
    return getLocale(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getLocale(_GetLocale value),
    TResult setLocale(_SetLocale value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getLocale != null) {
      return getLocale(this);
    }
    return orElse();
  }
}

abstract class _GetLocale implements LocaleEvent {
  const factory _GetLocale() = _$_GetLocale;
}

/// @nodoc
abstract class _$SetLocaleCopyWith<$Res> {
  factory _$SetLocaleCopyWith(
          _SetLocale value, $Res Function(_SetLocale) then) =
      __$SetLocaleCopyWithImpl<$Res>;
  $Res call({String languageCode, String countryCode});
}

/// @nodoc
class __$SetLocaleCopyWithImpl<$Res> extends _$LocaleEventCopyWithImpl<$Res>
    implements _$SetLocaleCopyWith<$Res> {
  __$SetLocaleCopyWithImpl(_SetLocale _value, $Res Function(_SetLocale) _then)
      : super(_value, (v) => _then(v as _SetLocale));

  @override
  _SetLocale get _value => super._value as _SetLocale;

  @override
  $Res call({
    Object languageCode = freezed,
    Object countryCode = freezed,
  }) {
    return _then(_SetLocale(
      languageCode: languageCode == freezed
          ? _value.languageCode
          : languageCode as String,
      countryCode:
          countryCode == freezed ? _value.countryCode : countryCode as String,
    ));
  }
}

/// @nodoc
class _$_SetLocale implements _SetLocale {
  const _$_SetLocale({@required this.languageCode, this.countryCode})
      : assert(languageCode != null);

  @override
  final String languageCode;
  @override
  final String countryCode;

  @override
  String toString() {
    return 'LocaleEvent.setLocale(languageCode: $languageCode, countryCode: $countryCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SetLocale &&
            (identical(other.languageCode, languageCode) ||
                const DeepCollectionEquality()
                    .equals(other.languageCode, languageCode)) &&
            (identical(other.countryCode, countryCode) ||
                const DeepCollectionEquality()
                    .equals(other.countryCode, countryCode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(languageCode) ^
      const DeepCollectionEquality().hash(countryCode);

  @JsonKey(ignore: true)
  @override
  _$SetLocaleCopyWith<_SetLocale> get copyWith =>
      __$SetLocaleCopyWithImpl<_SetLocale>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getLocale(),
    @required TResult setLocale(String languageCode, String countryCode),
  }) {
    assert(getLocale != null);
    assert(setLocale != null);
    return setLocale(languageCode, countryCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getLocale(),
    TResult setLocale(String languageCode, String countryCode),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (setLocale != null) {
      return setLocale(languageCode, countryCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getLocale(_GetLocale value),
    @required TResult setLocale(_SetLocale value),
  }) {
    assert(getLocale != null);
    assert(setLocale != null);
    return setLocale(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getLocale(_GetLocale value),
    TResult setLocale(_SetLocale value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (setLocale != null) {
      return setLocale(this);
    }
    return orElse();
  }
}

abstract class _SetLocale implements LocaleEvent {
  const factory _SetLocale(
      {@required String languageCode, String countryCode}) = _$_SetLocale;

  String get languageCode;
  String get countryCode;
  @JsonKey(ignore: true)
  _$SetLocaleCopyWith<_SetLocale> get copyWith;
}

/// @nodoc
class _$LocaleStateTearOff {
  const _$LocaleStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _InProgress inProgress() {
    return const _InProgress();
  }

// ignore: unused_element
  _Success success(Locale locale) {
    return _Success(
      locale,
    );
  }

// ignore: unused_element
  _Failed failed(LocaleFailure failure) {
    return _Failed(
      failure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $LocaleState = _$LocaleStateTearOff();

/// @nodoc
mixin _$LocaleState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult inProgress(),
    @required TResult success(Locale locale),
    @required TResult failed(LocaleFailure failure),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult inProgress(),
    TResult success(Locale locale),
    TResult failed(LocaleFailure failure),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult inProgress(_InProgress value),
    @required TResult success(_Success value),
    @required TResult failed(_Failed value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult inProgress(_InProgress value),
    TResult success(_Success value),
    TResult failed(_Failed value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $LocaleStateCopyWith<$Res> {
  factory $LocaleStateCopyWith(
          LocaleState value, $Res Function(LocaleState) then) =
      _$LocaleStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LocaleStateCopyWithImpl<$Res> implements $LocaleStateCopyWith<$Res> {
  _$LocaleStateCopyWithImpl(this._value, this._then);

  final LocaleState _value;
  // ignore: unused_field
  final $Res Function(LocaleState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$LocaleStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'LocaleState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult inProgress(),
    @required TResult success(Locale locale),
    @required TResult failed(LocaleFailure failure),
  }) {
    assert(initial != null);
    assert(inProgress != null);
    assert(success != null);
    assert(failed != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult inProgress(),
    TResult success(Locale locale),
    TResult failed(LocaleFailure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult inProgress(_InProgress value),
    @required TResult success(_Success value),
    @required TResult failed(_Failed value),
  }) {
    assert(initial != null);
    assert(inProgress != null);
    assert(success != null);
    assert(failed != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult inProgress(_InProgress value),
    TResult success(_Success value),
    TResult failed(_Failed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements LocaleState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$InProgressCopyWith<$Res> {
  factory _$InProgressCopyWith(
          _InProgress value, $Res Function(_InProgress) then) =
      __$InProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$InProgressCopyWithImpl<$Res> extends _$LocaleStateCopyWithImpl<$Res>
    implements _$InProgressCopyWith<$Res> {
  __$InProgressCopyWithImpl(
      _InProgress _value, $Res Function(_InProgress) _then)
      : super(_value, (v) => _then(v as _InProgress));

  @override
  _InProgress get _value => super._value as _InProgress;
}

/// @nodoc
class _$_InProgress implements _InProgress {
  const _$_InProgress();

  @override
  String toString() {
    return 'LocaleState.inProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult inProgress(),
    @required TResult success(Locale locale),
    @required TResult failed(LocaleFailure failure),
  }) {
    assert(initial != null);
    assert(inProgress != null);
    assert(success != null);
    assert(failed != null);
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult inProgress(),
    TResult success(Locale locale),
    TResult failed(LocaleFailure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (inProgress != null) {
      return inProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult inProgress(_InProgress value),
    @required TResult success(_Success value),
    @required TResult failed(_Failed value),
  }) {
    assert(initial != null);
    assert(inProgress != null);
    assert(success != null);
    assert(failed != null);
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult inProgress(_InProgress value),
    TResult success(_Success value),
    TResult failed(_Failed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class _InProgress implements LocaleState {
  const factory _InProgress() = _$_InProgress;
}

/// @nodoc
abstract class _$SuccessCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) then) =
      __$SuccessCopyWithImpl<$Res>;
  $Res call({Locale locale});
}

/// @nodoc
class __$SuccessCopyWithImpl<$Res> extends _$LocaleStateCopyWithImpl<$Res>
    implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(_Success _value, $Res Function(_Success) _then)
      : super(_value, (v) => _then(v as _Success));

  @override
  _Success get _value => super._value as _Success;

  @override
  $Res call({
    Object locale = freezed,
  }) {
    return _then(_Success(
      locale == freezed ? _value.locale : locale as Locale,
    ));
  }
}

/// @nodoc
class _$_Success implements _Success {
  const _$_Success(this.locale) : assert(locale != null);

  @override
  final Locale locale;

  @override
  String toString() {
    return 'LocaleState.success(locale: $locale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Success &&
            (identical(other.locale, locale) ||
                const DeepCollectionEquality().equals(other.locale, locale)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(locale);

  @JsonKey(ignore: true)
  @override
  _$SuccessCopyWith<_Success> get copyWith =>
      __$SuccessCopyWithImpl<_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult inProgress(),
    @required TResult success(Locale locale),
    @required TResult failed(LocaleFailure failure),
  }) {
    assert(initial != null);
    assert(inProgress != null);
    assert(success != null);
    assert(failed != null);
    return success(locale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult inProgress(),
    TResult success(Locale locale),
    TResult failed(LocaleFailure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(locale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult inProgress(_InProgress value),
    @required TResult success(_Success value),
    @required TResult failed(_Failed value),
  }) {
    assert(initial != null);
    assert(inProgress != null);
    assert(success != null);
    assert(failed != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult inProgress(_InProgress value),
    TResult success(_Success value),
    TResult failed(_Failed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements LocaleState {
  const factory _Success(Locale locale) = _$_Success;

  Locale get locale;
  @JsonKey(ignore: true)
  _$SuccessCopyWith<_Success> get copyWith;
}

/// @nodoc
abstract class _$FailedCopyWith<$Res> {
  factory _$FailedCopyWith(_Failed value, $Res Function(_Failed) then) =
      __$FailedCopyWithImpl<$Res>;
  $Res call({LocaleFailure failure});

  $LocaleFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$FailedCopyWithImpl<$Res> extends _$LocaleStateCopyWithImpl<$Res>
    implements _$FailedCopyWith<$Res> {
  __$FailedCopyWithImpl(_Failed _value, $Res Function(_Failed) _then)
      : super(_value, (v) => _then(v as _Failed));

  @override
  _Failed get _value => super._value as _Failed;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(_Failed(
      failure == freezed ? _value.failure : failure as LocaleFailure,
    ));
  }

  @override
  $LocaleFailureCopyWith<$Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $LocaleFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
class _$_Failed implements _Failed {
  const _$_Failed(this.failure) : assert(failure != null);

  @override
  final LocaleFailure failure;

  @override
  String toString() {
    return 'LocaleState.failed(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Failed &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$FailedCopyWith<_Failed> get copyWith =>
      __$FailedCopyWithImpl<_Failed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult inProgress(),
    @required TResult success(Locale locale),
    @required TResult failed(LocaleFailure failure),
  }) {
    assert(initial != null);
    assert(inProgress != null);
    assert(success != null);
    assert(failed != null);
    return failed(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult inProgress(),
    TResult success(Locale locale),
    TResult failed(LocaleFailure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (failed != null) {
      return failed(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult inProgress(_InProgress value),
    @required TResult success(_Success value),
    @required TResult failed(_Failed value),
  }) {
    assert(initial != null);
    assert(inProgress != null);
    assert(success != null);
    assert(failed != null);
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult inProgress(_InProgress value),
    TResult success(_Success value),
    TResult failed(_Failed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements LocaleState {
  const factory _Failed(LocaleFailure failure) = _$_Failed;

  LocaleFailure get failure;
  @JsonKey(ignore: true)
  _$FailedCopyWith<_Failed> get copyWith;
}
