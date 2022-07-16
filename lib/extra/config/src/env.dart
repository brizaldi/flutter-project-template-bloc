part of configuration;

abstract class Env {
  Env() {
    _init();
  }

  void _init() {
    runZonedGuarded(() async {
      WidgetsFlutterBinding.ensureInitialized();

      BuildConfig.init(flavor: const String.fromEnvironment('flavor'));

      Themes.initUiOverlayStyle();

      await configureDependencies();
      _configureDio();

      final app = await onCreate();

      runApp(app);
    }, (obj, stack) {
      debugPrint(obj.toString());
      debugPrint(stack.toString());
    });
  }

  void _configureDio() {
    getIt<Dio>()
      ..options = BaseOptions(
        connectTimeout: BuildConfig.get().connectTimeout,
        receiveTimeout: BuildConfig.get().receiveTimeout,
        validateStatus: (status) {
          return true;
        },
        baseUrl: BuildConfig.get().baseUrl,
      )
      ..interceptors.add(getIt<AuthInterceptor>());
  }

  FutureOr<StatelessWidget> onCreate();
}
