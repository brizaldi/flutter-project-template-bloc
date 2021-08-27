import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../extra/langs/locale_keys.g.dart';
import '../../../auth/application/sign_out/sign_out_bloc.dart';

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
      body: const SizedBox(),
    );
  }
}
