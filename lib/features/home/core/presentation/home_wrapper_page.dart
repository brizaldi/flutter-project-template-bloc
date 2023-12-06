import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../extra/injection/injection.dart';
import '../../../auth/application/sign_out/sign_out_bloc.dart';
import '../../counter/application/counter_cubit.dart';

@RoutePage()
class HomeWrapperPage extends StatelessWidget {
  const HomeWrapperPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<SignOutBloc>(),
        ),
        BlocProvider(
          create: (context) => CounterCubit(),
        ),
      ],
      child: const AutoRouter(),
    );
  }
}
