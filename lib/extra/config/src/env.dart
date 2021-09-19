part of configuration;

abstract class Env {
  Env() {
    _init();
  }

  void _init() {
    runZonedGuarded(() async {
      WidgetsFlutterBinding.ensureInitialized();
      await EasyLocalization.ensureInitialized();

      await const MethodChannel('flavor')
          .invokeMethod<String>('getFlavor')
          .then((flavor) async {
        BuildConfig.init(flavor: flavor);
      }).catchError((Object error) {
        print('Cannot get flavor');
        print(error);
      });

      Themes.initUiOverlayStyle();

      await configureDependencies();
      _configureDio();

      final app = await onCreate();

      runApp(
        EasyLocalization(
          supportedLocales: const [Locale('en'), Locale('id')],
          fallbackLocale: const Locale('en'),
          path: 'assets/translations',
          child: app,
        ),
      );
    }, (obj, stack) {
      print(obj);
      print(stack);
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
