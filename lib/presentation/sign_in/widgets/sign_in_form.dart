import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/auth/sign_in_form/sign_in_form_bloc.dart';
import '../../../extra/langs/locale_keys.g.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInFormBloc, SignInFormState>(
      buildWhen: (p, c) => p.showErrorMessages != c.showErrorMessages,
      builder: (context, state) {
        return Form(
          autovalidateMode: state.showErrorMessages
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  labelText: 'Email',
                ),
                keyboardType: TextInputType.emailAddress,
                onChanged: (value) => context
                    .read<SignInFormBloc>()
                    .add(SignInFormEvent.emailChanged(value)),
                validator: (_) => context
                    .read<SignInFormBloc>()
                    .state
                    .emailAddress
                    .value
                    .fold(
                      (f) => f.maybeMap(
                        invalidEmail: (_) =>
                            LocaleKeys.validEmailVerificationText.tr(),
                        orElse: () => null,
                      ),
                      (_) => null,
                    ),
              ),
              const SizedBox(height: 8),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.lock),
                  labelText: LocaleKeys.password.tr(),
                ),
                obscureText: true,
                onChanged: (value) => context
                    .read<SignInFormBloc>()
                    .add(SignInFormEvent.passwordChanged(value)),
                validator: (_) =>
                    context.read<SignInFormBloc>().state.password.value.fold(
                          (f) => f.maybeMap(
                            shortPassword: (_) =>
                                LocaleKeys.shortPasswordVerificationText.tr(),
                            orElse: () => null,
                          ),
                          (_) => null,
                        ),
              ),
            ],
          ),
        );
      },
    );
  }
}
