import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/auth_failure.dart';
import '../../domain/i_auth_repository.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this._authRepository) : super(const _Initial()) {
    on<AuthEvent>((event, emit) async {
      await event.when(
        authCheckRequested: () => authCheckRequested(emit),
      );
    });
  }

  final IAuthRepository _authRepository;

  Future<void> authCheckRequested(Emitter<AuthState> emit) async {
    final isSignedIn = await _authRepository.isSignedIn();
    if (isSignedIn) {
      emit(const AuthState.authenticated());
    } else {
      emit(const AuthState.unauthenticated());
    }
  }
}
