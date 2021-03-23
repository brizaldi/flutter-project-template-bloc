import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'application/auth/auth_bloc.dart';
import 'extra/config/configuration.dart';
import 'extra/constants/strings.dart';
import 'extra/injection/injection.dart';
import 'extra/routes/router.gr.dart';
import 'extra/style/style.dart';

void main() => Main();

class Main extends Env {
  @override
  FutureOr<StatelessWidget> onCreate() {
    ErrorWidget.builder = (details) {
      Zone.current.handleUncaughtError(details.exception, details.stack!);
      return Container(color: Colors.transparent);
    };

    return Application();
  }
}

class Application extends StatelessWidget {
  Application({Key? key}) : super(key: key);

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
        ),
      ],
      child: MaterialApp.router(
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
        title: Strings.appName,
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
