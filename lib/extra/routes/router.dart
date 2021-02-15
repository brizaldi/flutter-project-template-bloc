import 'package:auto_route/auto_route_annotations.dart';

import '../../presentation/home/home_page.dart';
import '../../presentation/sign_in/sign_in_page.dart';
import '../../presentation/splash/splash_page.dart';

@MaterialAutoRouter(
  generateNavigationHelperExtension: true,
  routes: <AutoRoute>[
    MaterialRoute(page: SplashPage, initial: true),
    MaterialRoute(page: HomePage),
    MaterialRoute(page: SignInPage),
  ],
)
class $Router {}
