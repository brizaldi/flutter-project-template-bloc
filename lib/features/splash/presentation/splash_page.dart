import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../extra/langs/locale_keys.g.dart';
import '../../../extra/routes/app_router.gr.dart';
import '../../auth/application/auth/auth_bloc.dart';
import '../../core/presentation/widgets/alert_helper.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            state.map(
              initial: (_) {},
              authenticated: (_) => context.router.replace(const HomeRoute()),
              unauthenticated: (_) =>
                  context.router.replace(const SignInRoute()),
              failed: (failure) {
                AlertHelper.showSnackBar(
                  context,
                  message: LocaleKeys.signInStatusError.tr(),
                );
                context.router.replace(const SignInRoute());
              },
            );
          },
        ),
      ],
      child: const Scaffold(),
    );
  }
}
