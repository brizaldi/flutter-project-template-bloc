// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AuthFailureTearOff {
  const _$AuthFailureTearOff();

// ignore: unused_element
  CacheError cacheError() {
    return const CacheError();
  }

// ignore: unused_element
  ServerError serverError() {
    return const ServerError();
  }

// ignore: unused_element
  NoConnectionError noConnectionError() {
    return const NoConnectionError();
  }
}

/// @nodoc
// ignore: unused_element
const $AuthFailure = _$AuthFailureTearOff();

/// @nodoc
mixin _$AuthFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult cacheError(),
    @required TResult serverError(),
    @required TResult noConnectionError(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult cacheError(),
    TResult serverError(),
    TResult noConnectionError(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult cacheError(CacheError value),
    @required TResult serverError(ServerError value),
    @required TResult noConnectionError(NoConnectionError value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult cacheError(CacheError value),
    TResult serverError(ServerError value),
    TResult noConnectionError(NoConnectionError value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthFailureCopyWithImpl<$Res> implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  final AuthFailure _value;
  // ignore: unused_field
  final $Res Function(AuthFailure) _then;
}

/// @nodoc
abstract class $CacheErrorCopyWith<$Res> {
  factory $CacheErrorCopyWith(
          CacheError value, $Res Function(CacheError) then) =
      _$CacheErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$CacheErrorCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
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
    return 'AuthFailure.cacheError()';
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
    @required TResult serverError(),
    @required TResult noConnectionError(),
  }) {
    assert(cacheError != null);
    assert(serverError != null);
    assert(noConnectionError != null);
    return cacheError();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult cacheError(),
    TResult serverError(),
    TResult noConnectionError(),
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
    @required TResult serverError(ServerError value),
    @required TResult noConnectionError(NoConnectionError value),
  }) {
    assert(cacheError != null);
    assert(serverError != null);
    assert(noConnectionError != null);
    return cacheError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult cacheError(CacheError value),
    TResult serverError(ServerError value),
    TResult noConnectionError(NoConnectionError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (cacheError != null) {
      return cacheError(this);
    }
    return orElse();
  }
}

abstract class CacheError implements AuthFailure {
  const factory CacheError() = _$CacheError;
}

/// @nodoc
abstract class $ServerErrorCopyWith<$Res> {
  factory $ServerErrorCopyWith(
          ServerError value, $Res Function(ServerError) then) =
      _$ServerErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$ServerErrorCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements $ServerErrorCopyWith<$Res> {
  _$ServerErrorCopyWithImpl(
      ServerError _value, $Res Function(ServerError) _then)
      : super(_value, (v) => _then(v as ServerError));

  @override
  ServerError get _value => super._value as ServerError;
}

/// @nodoc
class _$ServerError implements ServerError {
  const _$ServerError();

  @override
  String toString() {
    return 'AuthFailure.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult cacheError(),
    @required TResult serverError(),
    @required TResult noConnectionError(),
  }) {
    assert(cacheError != null);
    assert(serverError != null);
    assert(noConnectionError != null);
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult cacheError(),
    TResult serverError(),
    TResult noConnectionError(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult cacheError(CacheError value),
    @required TResult serverError(ServerError value),
    @required TResult noConnectionError(NoConnectionError value),
  }) {
    assert(cacheError != null);
    assert(serverError != null);
    assert(noConnectionError != null);
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult cacheError(CacheError value),
    TResult serverError(ServerError value),
    TResult noConnectionError(NoConnectionError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements AuthFailure {
  const factory ServerError() = _$ServerError;
}

/// @nodoc
abstract class $NoConnectionErrorCopyWith<$Res> {
  factory $NoConnectionErrorCopyWith(
          NoConnectionError value, $Res Function(NoConnectionError) then) =
      _$NoConnectionErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$NoConnectionErrorCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $NoConnectionErrorCopyWith<$Res> {
  _$NoConnectionErrorCopyWithImpl(
      NoConnectionError _value, $Res Function(NoConnectionError) _then)
      : super(_value, (v) => _then(v as NoConnectionError));

  @override
  NoConnectionError get _value => super._value as NoConnectionError;
}

/// @nodoc
class _$NoConnectionError implements NoConnectionError {
  const _$NoConnectionError();

  @override
  String toString() {
    return 'AuthFailure.noConnectionError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NoConnectionError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult cacheError(),
    @required TResult serverError(),
    @required TResult noConnectionError(),
  }) {
    assert(cacheError != null);
    assert(serverError != null);
    assert(noConnectionError != null);
    return noConnectionError();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult cacheError(),
    TResult serverError(),
    TResult noConnectionError(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (noConnectionError != null) {
      return noConnectionError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult cacheError(CacheError value),
    @required TResult serverError(ServerError value),
    @required TResult noConnectionError(NoConnectionError value),
  }) {
    assert(cacheError != null);
    assert(serverError != null);
    assert(noConnectionError != null);
    return noConnectionError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult cacheError(CacheError value),
    TResult serverError(ServerError value),
    TResult noConnectionError(NoConnectionError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (noConnectionError != null) {
      return noConnectionError(this);
    }
    return orElse();
  }
}

abstract class NoConnectionError implements AuthFailure {
  const factory NoConnectionError() = _$NoConnectionError;
}
