import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../extra/utils/logging.dart';
import '../../core/domain/exceptions.dart';
import '../../core/infrastructure/dio_extensions.dart';
import '../../core/infrastructure/exceptions.dart';
import 'auth_response.dart';

abstract class IAuthRemoteService {
  Future<AuthResponse> signIn({
    required String email,
    required String password,
  });

  Future<void> signOut();
}

@LazySingleton(as: IAuthRemoteService)
class AuthRemoteService implements IAuthRemoteService {
  AuthRemoteService(this._dio);

  final Dio _dio;

  @override
  Future<void> signOut() {
    try {
      return Future.delayed(const Duration(seconds: 1), () {
        return;
      });
    } catch (e, s) {
      Log.severe(e.toString());
      Log.severe(s.toString());
      throw ServerException();
    }
  }

  @override
  Future<AuthResponse> signIn({
    required String email,
    required String password,
  }) async {
    try {
      final response = await _dio.post(
        'login',
        data: {
          'email': email,
          'password': password,
        },
      );

      if (response.statusCode == 201) {
        final responseData = response.data as Map<String, dynamic>;
        final token = responseData['token'];

        return AuthResponse.withToken(token);
      } else {
        if (response.data is Map<String, dynamic>) {
          final responseData = response.data as Map<String, dynamic>;
          return AuthResponse.failure(
            errorCode: response.statusCode,
            message: responseData['message'],
          );
        } else {
          return AuthResponse.failure(
            errorCode: response.statusCode,
          );
        }
      }
    } on DioError catch (e) {
      if (e.isNoConnectionError) {
        return const AuthResponse.noConnection();
      } else if (e.response != null) {
        throw RestApiException(e.response?.statusCode);
      } else {
        rethrow;
      }
    }
  }
}
