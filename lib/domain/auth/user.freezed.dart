// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

// ignore: unused_element
  _User call(
      {@required int id,
      @required @JsonKey(name: 'email_address') String email,
      @required @JsonKey(name: 'token') String accessToken}) {
    return _User(
      id: id,
      email: email,
      accessToken: accessToken,
    );
  }

// ignore: unused_element
  User fromJson(Map<String, Object> json) {
    return User.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  int get id;
  @JsonKey(name: 'email_address')
  String get email;
  @JsonKey(name: 'token')
  String get accessToken;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {int id,
      @JsonKey(name: 'email_address') String email,
      @JsonKey(name: 'token') String accessToken});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object id = freezed,
    Object email = freezed,
    Object accessToken = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      email: email == freezed ? _value.email : email as String,
      accessToken:
          accessToken == freezed ? _value.accessToken : accessToken as String,
    ));
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      @JsonKey(name: 'email_address') String email,
      @JsonKey(name: 'token') String accessToken});
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object id = freezed,
    Object email = freezed,
    Object accessToken = freezed,
  }) {
    return _then(_User(
      id: id == freezed ? _value.id : id as int,
      email: email == freezed ? _value.email : email as String,
      accessToken:
          accessToken == freezed ? _value.accessToken : accessToken as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_User implements _User {
  const _$_User(
      {@required this.id,
      @required @JsonKey(name: 'email_address') this.email,
      @required @JsonKey(name: 'token') this.accessToken})
      : assert(id != null),
        assert(email != null),
        assert(accessToken != null);

  factory _$_User.fromJson(Map<String, dynamic> json) =>
      _$_$_UserFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'email_address')
  final String email;
  @override
  @JsonKey(name: 'token')
  final String accessToken;

  @override
  String toString() {
    return 'User(id: $id, email: $email, accessToken: $accessToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.accessToken, accessToken) ||
                const DeepCollectionEquality()
                    .equals(other.accessToken, accessToken)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(accessToken);

  @JsonKey(ignore: true)
  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserToJson(this);
  }
}

abstract class _User implements User {
  const factory _User(
      {@required int id,
      @required @JsonKey(name: 'email_address') String email,
      @required @JsonKey(name: 'token') String accessToken}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'email_address')
  String get email;
  @override
  @JsonKey(name: 'token')
  String get accessToken;
  @override
  @JsonKey(ignore: true)
  _$UserCopyWith<_User> get copyWith;
}
