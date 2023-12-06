import 'package:auto_route/auto_route.dart';

import 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => <AutoRoute>[
        AutoRoute(path: '/', page: SplashRoute.page, initial: true),
        AutoRoute(
          path: '/home',
          page: HomeWrapperRoute.page,
          children: [
            AutoRoute(path: '', page: HomeRoute.page),
            AutoRoute(path: 'counter', page: CounterRoute.page),
          ],
        ),
        AutoRoute(
          path: '/login',
          page: SignInRoute.page,
        ),
        RedirectRoute(path: '*', redirectTo: '/'),
      ];
}
