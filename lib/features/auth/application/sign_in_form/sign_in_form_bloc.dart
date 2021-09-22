import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/auth_failure.dart';
import '../../domain/i_auth_repository.dart';
import '../../domain/value_objects.dart';

part 'sign_in_form_bloc.freezed.dart';
part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';

@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  SignInFormBloc(this._authRepository) : super(SignInFormState.initial()) {
    on<SignInFormEvent>(
      (event, emit) async {
        await event.when(
          emailChanged: (emailStr) => emailChanged(emit, emailStr),
          passwordChanged: (passwordStr) => passwordChanged(emit, passwordStr),
          registerWithEmailAndPasswordPressed: () =>
              performActionOnAuthRepositoryWithEmailAndPassword(
            emit,
            _authRepository.registerWithEmailAndPassword,
          ),
          signInWithEmailAndPasswordPressed: () =>
              performActionOnAuthRepositoryWithEmailAndPassword(
            emit,
            _authRepository.signInWithEmailAndPassword,
          ),
        );
      },
      transformer: droppable(),
    );
  }

  final IAuthRepository _authRepository;

  FutureOr<void> emailChanged(
    Emitter<SignInFormState> emit,
    String emailStr,
  ) {
    emit(state.copyWith(
      email: Email(emailStr),
      authFailureOrSuccessOption: none(),
    ));
  }

  FutureOr<void> passwordChanged(
    Emitter<SignInFormState> emit,
    String passwordStr,
  ) {
    emit(state.copyWith(
      password: Password(passwordStr),
      authFailureOrSuccessOption: none(),
    ));
  }

  Future<void> performActionOnAuthRepositoryWithEmailAndPassword(
    Emitter<SignInFormState> emit,
    Future<Either<AuthFailure, Unit>> Function({
      required Email email,
      required Password password,
    })
        forwardedCall,
  ) async {
    Either<AuthFailure, Unit>? failureOrSuccess;

    final isEmailValid = state.email.isValid();
    final isPasswordValid = state.password.isValid();

    if (isEmailValid && isPasswordValid) {
      emit(state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      ));

      failureOrSuccess = await forwardedCall(
        email: state.email,
        password: state.password,
      );
    }

    emit(state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      authFailureOrSuccessOption: optionOf(failureOrSuccess),
    ));
  }
}
