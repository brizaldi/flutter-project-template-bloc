import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/auth/sign_out/sign_out_bloc.dart';
import '../../extra/injection/injection.dart';
import '../../extra/langs/locale_keys.g.dart';
import '../../extra/routes/router.gr.dart';
import '../core/widgets/alert_helper.dart';
import '../core/widgets/loading_overlay.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SignOutBloc>(),
      child: BlocConsumer<SignOutBloc, SignOutState>(
        listenWhen: (p, c) =>
            p.signOutFailureOrSuccessOption != c.signOutFailureOrSuccessOption,
        listener: (context, state) => state.signOutFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (failure) => AlertHelper.showSnackBar(
              context,
              message: failure.map(
                cacheError: (_) => LocaleKeys.deleteCacheUserError.tr(),
                serverError: (_) => LocaleKeys.serverError.tr(),
                noConnectionError: (_) => LocaleKeys.noConnectionError.tr(),
              ),
            ),
            (_) => ExtendedNavigator.of(context).replace(Routes.signInPage),
          ),
        ),
        buildWhen: (p, c) => p.isLoading != c.isLoading,
        builder: (context, state) {
          return Stack(
            children: [
              Scaffold(
                appBar: AppBar(
                  title: Text(LocaleKeys.home.tr()),
                ),
                body: Center(
                  child: TextButton(
                    onPressed: () => context
                        .read<SignOutBloc>()
                        .add(const SignOutEvent.signedOut()),
                    child: Text(LocaleKeys.signOut.tr()),
                  ),
                ),
              ),
              LoadingOverlay(isLoading: state.isLoading),
            ],
          );
        },
      ),
    );
  }
}
