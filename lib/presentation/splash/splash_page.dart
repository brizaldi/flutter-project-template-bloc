import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/auth/auth_bloc.dart';
import '../../application/locale/locale_bloc.dart';
import '../../extra/langs/locale_keys.g.dart';
import '../../extra/routes/router.gr.dart';
import '../core/widgets/alert_helper.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            state.map(
              initial: (_) {},
              authenticated: (_) =>
                  ExtendedNavigator.of(context).replace(Routes.homePage),
              unauthenticated: (_) =>
                  ExtendedNavigator.of(context).replace(Routes.signInPage),
              failed: (failure) {
                AlertHelper.showSnackBar(
                  context,
                  message: LocaleKeys.signInStatusError.tr(),
                );
                ExtendedNavigator.of(context).replace(Routes.signInPage);
              },
            );
          },
        ),
        BlocListener<LocaleBloc, LocaleState>(
          listener: (context, state) {
            state.map(
              initial: (_) {},
              inProgress: (_) {},
              success: (state) => context.locale = state.locale,
              failed: (failure) {
                AlertHelper.showSnackBar(
                  context,
                  message: LocaleKeys.getCachedLocaleError.tr(),
                );
              },
            );
          },
        ),
      ],
      child: Container(),
    );
  }
}
