// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:project_template/presentation/home/home_page.dart' as _i3;
import 'package:project_template/presentation/sign_in/sign_in_page.dart' as _i4;
import 'package:project_template/presentation/splash/splash_page.dart' as _i2;

class AppRouter extends _i1.RootStackRouter {
  AppRouter();

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    SplashRoute.name: (entry) {
      return _i1.AdaptivePage(entry: entry, child: const _i2.SplashPage());
    },
    HomeRoute.name: (entry) {
      return _i1.AdaptivePage(entry: entry, child: const _i3.HomePage());
    },
    SignInRoute.name: (entry) {
      return _i1.AdaptivePage(entry: entry, child: const _i4.SignInPage());
    }
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(SplashRoute.name, path: '/'),
        _i1.RouteConfig(HomeRoute.name, path: '/home-page'),
        _i1.RouteConfig(SignInRoute.name, path: '/sign-in-page')
      ];
}

class SplashRoute extends _i1.PageRouteInfo {
  const SplashRoute() : super(name, path: '/');

  static const String name = 'SplashRoute';
}

class HomeRoute extends _i1.PageRouteInfo {
  const HomeRoute() : super(name, path: '/home-page');

  static const String name = 'HomeRoute';
}

class SignInRoute extends _i1.PageRouteInfo {
  const SignInRoute() : super(name, path: '/sign-in-page');

  static const String name = 'SignInRoute';
}
