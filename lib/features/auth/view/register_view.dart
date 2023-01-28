// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:opthalmology/features/auth/user.dart';
import 'package:opthalmology/features/auth/view/is_auth_status_view.dart';
import 'package:opthalmology/features/auth/view/login_view.dart';
import 'package:opthalmology/shared/navigator/go_buttons/to_settings.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../bloc.dart';

class RegisterView extends ReactiveStatelessWidget {
  const RegisterView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wellcome", textScaleFactor: 2),
        automaticallyImplyLeading: false,
        actions: const [GotoUsersViewSuper()],
      ),
      body: OnFormBuilder(
        listenTo: auth.registerForm,
        builder: () => Column(
          children: [
            IsAuthenticatedStatusView(),
            const Spacer(),
            if (!auth.isAuthenticated)
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: auth.nameFormField.controller,
                      decoration: InputDecoration(
                        hintText: 'enter your name...',
                        labelText: 'name',
                        errorText: auth.nameFormField.error,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      readOnly: auth.registerForm.isFormReadOnly,
                      enabled: auth.registerForm.isFormEnabled,
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
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: OnFormSubmissionBuilder(
                        listenTo: auth.registerForm,
                        onSubmitting: () => CircularProgressIndicator(),
                        child: ElevatedButton(
                          focusNode: auth.registerForm.submitFocusNode,
                          onPressed: auth.registerForm.isValid
                              ? () {
                                  if (auth.registerForm.isValid) {
                                    auth.registerForm.submit();
                                  } else {
                                    print('Nothing happened');
                                  }
                                }
                              : null,
                          child: Text('Register'),
                        )),
                  ),
                ],
              )
            else
              Icon(Icons.done),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  RM.navigate.to(LoginView());
                },
                child: Text('Already registered. Login now'),
              ),
            ),
            SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
