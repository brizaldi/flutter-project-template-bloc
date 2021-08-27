import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

abstract class IAuthLocalService {
  Future<String?> getCachedToken();

  Future<void> cacheToken(String token);

  Future<void> clearCachedToken();
}

@LazySingleton(as: IAuthLocalService)
class AuthLocalService implements IAuthLocalService {
  AuthLocalService(this._box);

  final Box _box;
  final tokenKey = 'TOKEN';

  @override
  Future<String?> getCachedToken() async {
    final token = _box.get(tokenKey) as String?;
    return token;
  }

  @override
  Future<void> clearCachedToken() {
    return _box.clear();
  }

  @override
  Future<void> cacheToken(String token) {
    return _box.put(
      tokenKey,
      token,
    );
  }
}
