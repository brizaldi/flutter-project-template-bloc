import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../extra/routes/app_router.gr.dart';
import '../../auth/application/auth/auth_bloc.dart';
import '../../core/presentation/widgets/alert_helper.dart';

@RoutePage()
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            state.map(
              initial: (_) {},
              authenticated: (_) =>
                  unawaited(context.router.replace(const HomeRoute())),
              unauthenticated: (_) =>
                  unawaited(context.router.replace(const SignInRoute())),
              failed: (failure) {
                AlertHelper.showSnackBar(
                  context,
                  message: AppLocalizations.of(context)!.signInStatusError,
                );
                unawaited(context.router.replace(const SignInRoute()));
              },
            );
          },
        ),
      ],
      child: const Scaffold(),
    );
  }
}
