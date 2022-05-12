import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../extra/constants/strings.dart';
import '../../../extra/injection/injection.dart';
import '../../../extra/routes/app_router.gr.dart';
import '../../../extra/style/style.dart';
import '../../auth/application/auth/auth_bloc.dart';

class AppWidget extends StatelessWidget {
  AppWidget({Key? key}) : super(key: key);

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
        onGenerateTitle: (BuildContext context) => Strings.appName,
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
