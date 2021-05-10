import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/auth/user.dart';
import '../../../domain/auth/value_objects.dart';
import '../../../domain/core/value_objects.dart';

part 'user_dtos.freezed.dart';
part 'user_dtos.g.dart';

@freezed
class UserDto with _$UserDto {
  const factory UserDto({
    required String id,
    required String email,
    @JsonKey(name: 'token') required String userToken,
  }) = _UserDto;

  const UserDto._();

  factory UserDto.fromDomain(User user) {
    return UserDto(
      id: user.id.getOrCrash(),
      email: user.email.getOrCrash(),
      userToken: user.userToken.getOrCrash(),
    );
  }

  User toDomain() {
    return User(
      id: UniqueId(id),
      email: EmailAddress(email),
      userToken: UserToken(userToken),
    );
  }

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);
}
