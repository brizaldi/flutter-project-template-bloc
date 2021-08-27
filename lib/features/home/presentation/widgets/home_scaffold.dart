import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../extra/langs/locale_keys.g.dart';
import '../../../../extra/routes/app_router.gr.dart';
import '../../../auth/application/sign_out/sign_out_bloc.dart';
import '../../counter/application/counter_cubit.dart';

class HomeScaffold extends StatelessWidget {
  const HomeScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.home.tr()),
        actions: [
          IconButton(
            onPressed: () =>
                context.read<SignOutBloc>().add(const SignOutEvent.signedOut()),
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextButton(
              onPressed: () => context.read<CounterCubit>().increment(),
              child: const Text('Increment'),
            ),
            BlocBuilder<CounterCubit, int>(
              builder: (context, state) {
                return Text(
                  state.toString(),
                  style: Theme.of(context).textTheme.headline5,
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.pushRoute(const CounterRoute()),
        child: const Icon(Icons.chevron_right),
      ),
    );
  }
}
