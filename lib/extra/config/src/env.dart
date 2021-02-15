part of configuration;

abstract class Env {
  Env() {
    _init();
  }

  void _init() {
    runZonedGuarded(() async {
      WidgetsFlutterBinding.ensureInitialized();

      await const MethodChannel('flavor')
          .invokeMethod<String>('getFlavor')
          .then((flavor) async {
        BuildConfig.init(flavor: flavor);
      }).catchError((error) {});

      LicenseRegistry.addLicense(() async* {
        final license = await rootBundle.loadString('google_fonts/OFL.txt');
        yield LicenseEntryWithLineBreaks(['google_fonts'], license);
      });

      Themes.initUiOverlayStyle();

      await configureDependencies();
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

  FutureOr<StatelessWidget> onCreate();
}
