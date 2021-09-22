import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/auth_failure.dart';
import '../../domain/i_auth_repository.dart';

part 'sign_out_bloc.freezed.dart';
part 'sign_out_event.dart';
part 'sign_out_state.dart';

@injectable
class SignOutBloc extends Bloc<SignOutEvent, SignOutState> {
  SignOutBloc(this._authRepository) : super(SignOutState.initial()) {
    on<SignOutEvent>(
      (event, emit) async {
        await event.when(
          signedOut: () => signedOut(emit),
        );
      },
      transformer: droppable(),
    );
  }

  final IAuthRepository _authRepository;

  Future<void> signedOut(Emitter<SignOutState> emit) async {
    emit(state.copyWith(
      isLoading: true,
      signOutFailureOrSuccessOption: none(),
    ));

    final failureOrSuccess = await _authRepository.signOut();

    emit(state.copyWith(
      isLoading: false,
      signOutFailureOrSuccessOption: optionOf(failureOrSuccess),
    ));
  }
}
