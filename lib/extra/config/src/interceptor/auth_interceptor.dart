part of configuration;

class AuthInterceptor extends Interceptor {
  @override
  Future onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    options.headers['Accept'] = 'application/json';

    final user = await getIt.get<IAuthLocalDataSource>().getSignedInUser();

    if (user != null) {
      options.headers['Authorization'] = 'Bearer ${user.accessToken}';
    }
    return super.onRequest(options, handler);
  }
}
