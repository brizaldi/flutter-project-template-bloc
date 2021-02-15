part of 'sign_out_bloc.dart';

@freezed
abstract class SignOutEvent with _$SignOutEvent {
  const factory SignOutEvent.signedOut() = _SignedOut;
}
