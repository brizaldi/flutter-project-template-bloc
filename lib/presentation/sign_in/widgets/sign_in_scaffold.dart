import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

import '../../../application/auth/sign_in_form/sign_in_form_bloc.dart';
import '../../../extra/langs/locale_keys.g.dart';
import 'sign_in_form.dart';

class SignInScaffold extends StatelessWidget {
  const SignInScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return KeyboardDismissOnTap(
      child: Scaffold(
        appBar: AppBar(
          title: Text(LocaleKeys.signIn.tr()),
        ),
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            const SignInForm(),
            const SizedBox(height: 24),
            TextButton(
              onPressed: () {
                FocusScope.of(context).unfocus();
                context.read<SignInFormBloc>().add(
                    const SignInFormEvent.signInWithEmailAndPasswordPressed());
              },
              child: Text(LocaleKeys.signIn.tr()),
            ),
          ],
        ),
      ),
    );
  }
}
