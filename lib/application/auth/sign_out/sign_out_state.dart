part of 'sign_out_bloc.dart';

@freezed
class SignOutState with _$SignOutState {
  const factory SignOutState({
    required bool isLoading,
    required Option<Either<AuthFailure, Unit>> signOutFailureOrSuccessOption,
  }) = _SignOutState;

  factory SignOutState.initial() => SignOutState(
        isLoading: false,
        signOutFailureOrSuccessOption: none(),
      );
}
