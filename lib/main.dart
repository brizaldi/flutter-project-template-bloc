import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'application/auth/auth_bloc.dart';
import 'extra/config/configuration.dart';
import 'extra/constants/strings.dart';
import 'extra/injection/injection.dart';
import 'extra/routes/router.gr.dart' as app_router;
import 'extra/style/style.dart';

void main() => Main();

class Main extends Env {
  @override
  FutureOr<StatelessWidget> onCreate() {
    ErrorWidget.builder = (details) {
      Zone.current.handleUncaughtError(details.exception, details.stack);
      return Container(color: Colors.transparent);
    };

    return const Application();
  }
}

class Application extends StatelessWidget {
  const Application({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
        ),
      ],
      child: MaterialApp(
        title: Strings.appName,
        builder: ExtendedNavigator<app_router.Router>(
          router: app_router.Router(),
        ),
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        theme: Themes.lightTheme(context),
        darkTheme: Themes.darkTheme(context),
        themeMode: ThemeMode.light,
      ),
    );
  }
}
