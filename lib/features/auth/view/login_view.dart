import 'package:flutter/material.dart';
import 'package:opthalmology/features/auth/view/register_view.dart';
import 'package:opthalmology/shared/navigator/go_buttons/to_register.dart';
import 'package:opthalmology/shared/navigator/go_buttons/to_settings.dart';

import 'package:states_rebuilder/states_rebuilder.dart';

import '../interface.dart';

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
        listenTo: auth.loginForm,
        builder: () => Column(
          children: [
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: auth.emailFormField.controller,
                decoration: InputDecoration(
                  hintText: 'enter your email...',
                  labelText: 'email',
                  errorText: auth.emailFormField.error,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: auth.passwordFormField.controller,
                decoration: InputDecoration(
                  hintText: 'enter your password...',
                  labelText: 'password',
                  errorText: auth.passwordFormField.error,
                ),
              ),
            ),
            if (!auth.isAuthenticated)
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: OnFormSubmissionBuilder(
                      listenTo: auth.loginForm,
                      onSubmitting: () => const CircularProgressIndicator(),
                      child: ElevatedButton(
                        onPressed: auth.loginForm.isValid
                            ? () {
                                if (auth.loginForm.isValid) {
                                  auth.loginForm.submit();
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
              Column(
                children: const [
                  Text('already signed in'),
                  GotoRegisterViewButton(),
                ],
              )
          ],
        ),
      ),
    );
  }
}
