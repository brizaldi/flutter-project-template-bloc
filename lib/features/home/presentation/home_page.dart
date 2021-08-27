import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../extra/injection/injection.dart';
import '../../../extra/langs/locale_keys.g.dart';
import '../../../extra/routes/app_router.gr.dart';
import '../../auth/application/sign_out/sign_out_bloc.dart';
import '../../core/presentation/widgets/alert_helper.dart';
import '../../core/presentation/widgets/loading_overlay.dart';
import 'widgets/home_scaffold.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
                cache: (_) => LocaleKeys.deleteCacheUserError.tr(),
                server: (_) => LocaleKeys.serverError.tr(),
                noConnection: (_) => LocaleKeys.noConnectionError.tr(),
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
