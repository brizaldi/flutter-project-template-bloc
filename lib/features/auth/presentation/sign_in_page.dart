import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../extra/injection/injection.dart';
import '../../../extra/langs/locale_keys.g.dart';
import '../../../extra/routes/app_router.gr.dart';
import '../../core/presentation/widgets/alert_helper.dart';
import '../../core/presentation/widgets/loading_overlay.dart';
import '../application/sign_in_form/sign_in_form_bloc.dart';
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
                  cache: (_) => LocaleKeys.cacheUserError.tr(),
                  server: (value) =>
                      value.message ?? LocaleKeys.serverError.tr(),
                  noConnection: (_) => LocaleKeys.noConnectionError.tr(),
                ),
              ),
              (_) {
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
