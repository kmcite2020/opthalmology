import 'package:flutter/material.dart';
import 'package:opthalmology/features/auth/auth_bloc.dart';
import 'package:opthalmology/features/auth/login_bloc.dart';
import 'package:opthalmology/features/auth/presentation/view/is_auth_status_view.dart';
import 'package:states_rebuilder/scr/development_booster/injected_form_field/injected_text_editing.dart';
import 'package:states_rebuilder/scr/state_management/rm.dart';

import '../../../../shared/navigator/go_buttons/to_settings.dart';
import 'register_view.dart';

class LoginView extends ReactiveStatelessWidget {
  const LoginView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Wellcome back", textScaleFactor: 1.3),
        actions: const [GotoHomePageButton()],
      ),
      body: OnFormBuilder(
        listenTo: loginBloc.loginForm,
        builder: () => Column(
          children: [
            if (!authBloc.isAuth)
              Column(
                children: [
                  // const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: loginBloc.emailFormField.controller,
                      decoration: InputDecoration(
                        hintText: 'enter your email...',
                        labelText: 'email',
                        errorText: loginBloc.emailFormField.error,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: loginBloc.passwordFormField.controller,
                      decoration: InputDecoration(
                        hintText: 'enter your password...',
                        labelText: 'password',
                        errorText: loginBloc.passwordFormField.error,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: OnFormSubmissionBuilder(
                      listenTo: loginBloc.loginForm,
                      onSubmitting: () => const CircularProgressIndicator(),
                      child: ElevatedButton(
                        onPressed: loginBloc.loginForm.isValid
                            ? () {
                                if (loginBloc.loginForm.isValid) {
                                  loginBloc.loginForm.submit();
                                } else {
                                  print('Nothing happened');
                                }
                              }
                            : null,
                        child: const Text('Login'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () => RM.navigate.to(const RegisterView()),
                      child: const Text('Not registered. Register now'),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              )
            else
              const Center(child: IsAuthenticatedStatusView())
          ],
        ),
      ),
    );
  }
}
