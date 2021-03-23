part of configuration;

enum Flavor { development, staging, preprod, release }

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
          baseUrl: 'http://...',
          socketUrl: '',
          connectTimeout: 5000,
          receiveTimeout: 5000,
          flavor: Flavor.development,
        );

  const BuildConfig._staging()
      : this._(
          baseUrl: 'http://...',
          socketUrl: '',
          connectTimeout: 5000,
          receiveTimeout: 5000,
          flavor: Flavor.staging,
        );

  const BuildConfig._release()
      : this._(
          baseUrl: 'http://.../',
          socketUrl: '',
          connectTimeout: 5000,
          receiveTimeout: 5000,
          flavor: Flavor.release,
        );

  static late BuildConfig _instance;

  static void init({String? flavor}) {
    print('╔══════════════════════════════════════════════════════════════╗');
    print('                    Build Flavor: $flavor                       ');
    print('╚══════════════════════════════════════════════════════════════╝');
    switch (flavor) {
      case 'development':
        _instance = const BuildConfig._development();
        break;
      case 'staging':
        _instance = const BuildConfig._staging();
        break;
      default:
        _instance = const BuildConfig._release();
        break;
    }
    _initLog(flavor);
  }

  static BuildConfig get() {
    return _instance;
  }

  static Future<void> _initLog(String? flavor) async {
    await Log.init();
    switch (_instance.flavor) {
      case Flavor.development:
      case Flavor.staging:
      case Flavor.preprod:
        Log.setLevel(Level.ALL);
        break;
      case Flavor.release:
        Log.setLevel(Level.OFF);
        break;
    }
  }

  final String baseUrl;
  final String socketUrl;
  final int connectTimeout;
  final int receiveTimeout;
  final Flavor flavor;

  static String flavorName() =>
      StringUtils.enumToName(_instance.flavor.toString());

  static bool isProduction() => _instance.flavor == Flavor.release;

  static bool isStaging() => _instance.flavor == Flavor.staging;

  static bool isDevelopment() => _instance.flavor == Flavor.development;
}
