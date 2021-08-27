import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/auth/user.dart';
import '../../../domain/auth/value_objects.dart';
import '../../../domain/core/value_objects.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
class UserDTO with _$UserDTO {
  const factory UserDTO({
    required String id,
    required String email,
    @JsonKey(name: 'token') required String userToken,
  }) = _UserDTO;

  const UserDTO._();

  factory UserDTO.fromDomain(User _) {
    return UserDTO(
      id: _.id.getOrCrash(),
      email: _.email.getOrCrash(),
      userToken: _.userToken.getOrCrash(),
    );
  }

  factory UserDTO.fromJson(Map<String, dynamic> json) =>
      _$UserDTOFromJson(json);

  User toDomain() {
    return User(
      id: UniqueId(id),
      email: EmailAddress(email),
      userToken: UserToken(userToken),
    );
  }
}
