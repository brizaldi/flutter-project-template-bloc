// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'locale_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$LocaleFailureTearOff {
  const _$LocaleFailureTearOff();

// ignore: unused_element
  CacheError cacheError() {
    return const CacheError();
  }
}

/// @nodoc
// ignore: unused_element
const $LocaleFailure = _$LocaleFailureTearOff();

/// @nodoc
mixin _$LocaleFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult cacheError(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult cacheError(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult cacheError(CacheError value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult cacheError(CacheError value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $LocaleFailureCopyWith<$Res> {
  factory $LocaleFailureCopyWith(
          LocaleFailure value, $Res Function(LocaleFailure) then) =
      _$LocaleFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$LocaleFailureCopyWithImpl<$Res>
    implements $LocaleFailureCopyWith<$Res> {
  _$LocaleFailureCopyWithImpl(this._value, this._then);

  final LocaleFailure _value;
  // ignore: unused_field
  final $Res Function(LocaleFailure) _then;
}

/// @nodoc
abstract class $CacheErrorCopyWith<$Res> {
  factory $CacheErrorCopyWith(
          CacheError value, $Res Function(CacheError) then) =
      _$CacheErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$CacheErrorCopyWithImpl<$Res> extends _$LocaleFailureCopyWithImpl<$Res>
    implements $CacheErrorCopyWith<$Res> {
  _$CacheErrorCopyWithImpl(CacheError _value, $Res Function(CacheError) _then)
      : super(_value, (v) => _then(v as CacheError));

  @override
  CacheError get _value => super._value as CacheError;
}

/// @nodoc
class _$CacheError implements CacheError {
  const _$CacheError();

  @override
  String toString() {
    return 'LocaleFailure.cacheError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CacheError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult cacheError(),
  }) {
    assert(cacheError != null);
    return cacheError();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult cacheError(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (cacheError != null) {
      return cacheError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult cacheError(CacheError value),
  }) {
    assert(cacheError != null);
    return cacheError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult cacheError(CacheError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (cacheError != null) {
      return cacheError(this);
    }
    return orElse();
  }
}

abstract class CacheError implements LocaleFailure {
  const factory CacheError() = _$CacheError;
}
