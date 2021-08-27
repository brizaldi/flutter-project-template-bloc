import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import 'auth_local_service.dart';

@injectable
class AuthInterceptor extends Interceptor {
  AuthInterceptor(this._localService);

  final IAuthLocalService _localService;

  @override
  Future onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final token = await _localService.getCachedToken();
    final modifiedOptions = options
      ..headers.addAll(
        token == null ? {} : {'Authorization': 'bearer $token'},
      );
    handler.next(modifiedOptions);
  }
}
