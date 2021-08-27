import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/auth_failure.dart';
import '../../domain/i_auth_repository.dart';

part 'sign_out_bloc.freezed.dart';
part 'sign_out_event.dart';
part 'sign_out_state.dart';

@injectable
class SignOutBloc extends Bloc<SignOutEvent, SignOutState> {
  SignOutBloc(this._authRepository) : super(SignOutState.initial());

  final IAuthRepository _authRepository;

  @override
  Stream<SignOutState> mapEventToState(
    SignOutEvent event,
  ) async* {
    yield* event.map(
      signedOut: (e) async* {
        Either<AuthFailure, Unit> failureOrSuccess;

        yield state.copyWith(
          isLoading: true,
          signOutFailureOrSuccessOption: none(),
        );

        failureOrSuccess = await _authRepository.signOut();

        yield state.copyWith(
          isLoading: false,
          signOutFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}
