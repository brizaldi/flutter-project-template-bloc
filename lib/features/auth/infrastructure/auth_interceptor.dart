import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../domain/i_auth_repository.dart';

@injectable
class AuthInterceptor extends Interceptor {
  AuthInterceptor(this._repository);

  final IAuthRepository _repository;

  @override
  Future onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final storedCredentials = await _repository.getSignedInCredentials();
    final modifiedOptions = options
      ..headers.addAll(
        storedCredentials == null
            ? {}
            : {'Authorization': 'bearer $storedCredentials'},
      );
    handler.next(modifiedOptions);
  }
}
