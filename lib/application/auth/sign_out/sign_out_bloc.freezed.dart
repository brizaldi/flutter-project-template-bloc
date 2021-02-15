// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'sign_out_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SignOutEventTearOff {
  const _$SignOutEventTearOff();

// ignore: unused_element
  _SignedOut signedOut() {
    return const _SignedOut();
  }
}

/// @nodoc
// ignore: unused_element
const $SignOutEvent = _$SignOutEventTearOff();

/// @nodoc
mixin _$SignOutEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult signedOut(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult signedOut(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult signedOut(_SignedOut value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult signedOut(_SignedOut value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $SignOutEventCopyWith<$Res> {
  factory $SignOutEventCopyWith(
          SignOutEvent value, $Res Function(SignOutEvent) then) =
      _$SignOutEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignOutEventCopyWithImpl<$Res> implements $SignOutEventCopyWith<$Res> {
  _$SignOutEventCopyWithImpl(this._value, this._then);

  final SignOutEvent _value;
  // ignore: unused_field
  final $Res Function(SignOutEvent) _then;
}

/// @nodoc
abstract class _$SignedOutCopyWith<$Res> {
  factory _$SignedOutCopyWith(
          _SignedOut value, $Res Function(_SignedOut) then) =
      __$SignedOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$SignedOutCopyWithImpl<$Res> extends _$SignOutEventCopyWithImpl<$Res>
    implements _$SignedOutCopyWith<$Res> {
  __$SignedOutCopyWithImpl(_SignedOut _value, $Res Function(_SignedOut) _then)
      : super(_value, (v) => _then(v as _SignedOut));

  @override
  _SignedOut get _value => super._value as _SignedOut;
}

/// @nodoc
class _$_SignedOut implements _SignedOut {
  const _$_SignedOut();

  @override
  String toString() {
    return 'SignOutEvent.signedOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SignedOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult signedOut(),
  }) {
    assert(signedOut != null);
    return signedOut();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult signedOut(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signedOut != null) {
      return signedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult signedOut(_SignedOut value),
  }) {
    assert(signedOut != null);
    return signedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult signedOut(_SignedOut value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signedOut != null) {
      return signedOut(this);
    }
    return orElse();
  }
}

abstract class _SignedOut implements SignOutEvent {
  const factory _SignedOut() = _$_SignedOut;
}

/// @nodoc
class _$SignOutStateTearOff {
  const _$SignOutStateTearOff();

// ignore: unused_element
  _SignOutState call(
      {@required
          bool isLoading,
      @required
          Option<Either<AuthFailure, Unit>> signOutFailureOrSuccessOption}) {
    return _SignOutState(
      isLoading: isLoading,
      signOutFailureOrSuccessOption: signOutFailureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SignOutState = _$SignOutStateTearOff();

/// @nodoc
mixin _$SignOutState {
  bool get isLoading;
  Option<Either<AuthFailure, Unit>> get signOutFailureOrSuccessOption;

  @JsonKey(ignore: true)
  $SignOutStateCopyWith<SignOutState> get copyWith;
}

/// @nodoc
abstract class $SignOutStateCopyWith<$Res> {
  factory $SignOutStateCopyWith(
          SignOutState value, $Res Function(SignOutState) then) =
      _$SignOutStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      Option<Either<AuthFailure, Unit>> signOutFailureOrSuccessOption});
}

/// @nodoc
class _$SignOutStateCopyWithImpl<$Res> implements $SignOutStateCopyWith<$Res> {
  _$SignOutStateCopyWithImpl(this._value, this._then);

  final SignOutState _value;
  // ignore: unused_field
  final $Res Function(SignOutState) _then;

  @override
  $Res call({
    Object isLoading = freezed,
    Object signOutFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      signOutFailureOrSuccessOption: signOutFailureOrSuccessOption == freezed
          ? _value.signOutFailureOrSuccessOption
          : signOutFailureOrSuccessOption as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$SignOutStateCopyWith<$Res>
    implements $SignOutStateCopyWith<$Res> {
  factory _$SignOutStateCopyWith(
          _SignOutState value, $Res Function(_SignOutState) then) =
      __$SignOutStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      Option<Either<AuthFailure, Unit>> signOutFailureOrSuccessOption});
}

/// @nodoc
class __$SignOutStateCopyWithImpl<$Res> extends _$SignOutStateCopyWithImpl<$Res>
    implements _$SignOutStateCopyWith<$Res> {
  __$SignOutStateCopyWithImpl(
      _SignOutState _value, $Res Function(_SignOutState) _then)
      : super(_value, (v) => _then(v as _SignOutState));

  @override
  _SignOutState get _value => super._value as _SignOutState;

  @override
  $Res call({
    Object isLoading = freezed,
    Object signOutFailureOrSuccessOption = freezed,
  }) {
    return _then(_SignOutState(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      signOutFailureOrSuccessOption: signOutFailureOrSuccessOption == freezed
          ? _value.signOutFailureOrSuccessOption
          : signOutFailureOrSuccessOption as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_SignOutState implements _SignOutState {
  const _$_SignOutState(
      {@required this.isLoading, @required this.signOutFailureOrSuccessOption})
      : assert(isLoading != null),
        assert(signOutFailureOrSuccessOption != null);

  @override
  final bool isLoading;
  @override
  final Option<Either<AuthFailure, Unit>> signOutFailureOrSuccessOption;

  @override
  String toString() {
    return 'SignOutState(isLoading: $isLoading, signOutFailureOrSuccessOption: $signOutFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignOutState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.signOutFailureOrSuccessOption,
                    signOutFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.signOutFailureOrSuccessOption,
                    signOutFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(signOutFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$SignOutStateCopyWith<_SignOutState> get copyWith =>
      __$SignOutStateCopyWithImpl<_SignOutState>(this, _$identity);
}

abstract class _SignOutState implements SignOutState {
  const factory _SignOutState(
      {@required
          bool isLoading,
      @required
          Option<Either<AuthFailure, Unit>>
              signOutFailureOrSuccessOption}) = _$_SignOutState;

  @override
  bool get isLoading;
  @override
  Option<Either<AuthFailure, Unit>> get signOutFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$SignOutStateCopyWith<_SignOutState> get copyWith;
}
