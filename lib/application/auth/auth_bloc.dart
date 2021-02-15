import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/auth/auth_failure.dart';
import '../../domain/auth/i_auth_repository.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this._authRepository) : super(const _Initial());

  final IAuthRepository _authRepository;

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.map(
      authCheckRequested: (e) async* {
        final either = await _authRepository.getSignedInUser();
        yield either.fold(
          (failure) => AuthState.failed(failure),
          (userOption) => userOption.fold(
            () => const AuthState.unauthenticated(),
            (_) => const AuthState.authenticated(),
          ),
        );
      },
    );
  }
}
