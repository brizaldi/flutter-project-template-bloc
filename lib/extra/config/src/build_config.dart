part of '../configuration.dart';

enum Flavor { development, staging, release }

class BuildConfig {
  const BuildConfig._({
    required this.baseUrl,
    required this.socketUrl,
    required this.connectTimeout,
    required this.receiveTimeout,
    required this.flavor,
  });

  const BuildConfig._development()
      : this._(
          baseUrl: 'https://6128855786a213001729f948.mockapi.io/api/v1/',
          socketUrl: '',
          connectTimeout: const Duration(milliseconds: 20000),
          receiveTimeout: const Duration(milliseconds: 20000),
          flavor: Flavor.development,
        );

  const BuildConfig._staging()
      : this._(
          baseUrl: 'https://6128855786a213001729f948.mockapi.io/api/v1/',
          socketUrl: '',
          connectTimeout: const Duration(milliseconds: 20000),
          receiveTimeout: const Duration(milliseconds: 20000),
          flavor: Flavor.staging,
        );

  const BuildConfig._release()
      : this._(
          baseUrl: 'https://6128855786a213001729f948.mockapi.io/api/v1/',
          socketUrl: '',
          connectTimeout: const Duration(milliseconds: 20000),
          receiveTimeout: const Duration(milliseconds: 20000),
          flavor: Flavor.release,
        );

  static late BuildConfig _instance;

  static void init({String? flavor}) {
    debugPrint(
        '╔══════════════════════════════════════════════════════════════╗');
    debugPrint(
        '                    Build Flavor: $flavor                       ');
    debugPrint(
        '╚══════════════════════════════════════════════════════════════╝');
    switch (flavor) {
      case 'development':
        _instance = const BuildConfig._development();
      case 'staging':
        _instance = const BuildConfig._staging();
      default:
        _instance = const BuildConfig._release();
    }
    unawaited(_initLog());
  }

  static BuildConfig get() {
    return _instance;
  }

  static Future<void> _initLog() async {
    await Log.init();
    switch (_instance.flavor) {
      case Flavor.development:
      case Flavor.staging:
        Log.setLevel(Level.ALL);
      case Flavor.release:
        Log.setLevel(Level.OFF);
    }
  }

  final String baseUrl;
  final String socketUrl;
  final Duration connectTimeout;
  final Duration receiveTimeout;
  final Flavor flavor;

  static String flavorName() =>
      StringUtils.enumToName(_instance.flavor.toString());

  static bool isProduction() => _instance.flavor == Flavor.release;

  static bool isStaging() => _instance.flavor == Flavor.staging;

  static bool isDevelopment() => _instance.flavor == Flavor.development;
}
