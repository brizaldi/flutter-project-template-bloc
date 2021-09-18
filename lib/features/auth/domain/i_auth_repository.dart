import 'package:dartz/dartz.dart';

import 'auth_failure.dart';
import 'value_objects.dart';

abstract class IAuthRepository {
  Future<bool> isSignedIn();

  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required Email email,
    required Password password,
  });

  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required Email email,
    required Password password,
  });

  Future<Either<AuthFailure, Unit>> signOut();

  Future<String?> getSignedInCredentials();
}
