import 'package:auto_route/auto_route.dart';

import '../../presentation/home/home_page.dart';
import '../../presentation/sign_in/sign_in_page.dart';
import '../../presentation/splash/splash_page.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: HomePage),
    AutoRoute(page: SignInPage),
  ],
)
class $AppRouter {}
