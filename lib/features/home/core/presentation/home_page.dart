import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../../extra/injection/injection.dart';
import '../../../../extra/routes/app_router.gr.dart';
import '../../../auth/application/sign_out/sign_out_bloc.dart';
import '../../../core/presentation/widgets/alert_helper.dart';
import '../../../core/presentation/widgets/loading_overlay.dart';
import 'widgets/home_scaffold.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<SignOutBloc>(),
        ),
      ],
      child: BlocConsumer<SignOutBloc, SignOutState>(
        listenWhen: (p, c) =>
            p.signOutFailureOrSuccessOption != c.signOutFailureOrSuccessOption,
        listener: (context, state) => state.signOutFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (failure) => AlertHelper.showSnackBar(
              context,
              message: failure.map(
                storage: (_) => AppLocalizations.of(context)!.storageError,
                server: (_) => AppLocalizations.of(context)!.serverError,
                noConnection: (_) =>
                    AppLocalizations.of(context)!.noConnectionError,
              ),
            ),
            (_) => context.router.replace(const SignInRoute()),
          ),
        ),
        buildWhen: (p, c) => p.isLoading != c.isLoading,
        builder: (context, state) {
          return Stack(
            children: [
              const HomeScaffold(),
              LoadingOverlay(isLoading: state.isLoading),
            ],
          );
        },
      ),
    );
  }
}
