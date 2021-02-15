import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import 'auth_failure.dart';
import 'user.dart';
import 'value_objects.dart';

abstract class IAuthRepository {
  Future<Either<AuthFailure, Option<User>>> getSignedInUser();

  Future<Either<AuthFailure, User>> registerWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });

  Future<Either<AuthFailure, User>> signInWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });

  Future<Either<AuthFailure, Unit>> signOut();
}
