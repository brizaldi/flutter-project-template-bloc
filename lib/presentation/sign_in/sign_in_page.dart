import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/auth/sign_in_form/sign_in_form_bloc.dart';
import '../../extra/injection/injection.dart';
import '../../extra/langs/locale_keys.g.dart';
import '../../extra/routes/router.gr.dart';
import '../core/widgets/alert_helper.dart';
import '../core/widgets/loading_overlay.dart';
import 'widgets/sign_in_scaffold.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SignInFormBloc>(),
      child: BlocConsumer<SignInFormBloc, SignInFormState>(
        listenWhen: (p, c) =>
            p.authFailureOrSuccessOption != c.authFailureOrSuccessOption,
        listener: (context, state) {
          state.authFailureOrSuccessOption.fold(
            () {},
            (either) => either.fold(
              (failure) => AlertHelper.showSnackBar(
                context,
                message: failure.map(
                  cacheError: (_) => LocaleKeys.cacheUserError.tr(),
                  serverError: (_) => LocaleKeys.serverError.tr(),
                  noConnectionError: (_) => LocaleKeys.noConnectionError.tr(),
                ),
              ),
              (user) {
                AlertHelper.showSnackBar(
                  context,
                  message: LocaleKeys.welcomeUser.tr(
                    namedArgs: {'userName': user.email},
                  ),
                );
                context.router.replace(const HomeRoute());
              },
            ),
          );
        },
        buildWhen: (p, c) => p.isSubmitting != c.isSubmitting,
        builder: (context, state) {
          return Stack(
            children: [
              const SignInScaffold(),
              LoadingOverlay(isLoading: state.isSubmitting),
            ],
          );
        },
      ),
    );
  }
}
