// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:opthalmology/features/auth/auth_bloc.dart';
import 'package:opthalmology/features/auth/models/user_model.dart';
import 'package:opthalmology/features/auth/presentation/view/is_auth_status_view.dart';
import 'package:opthalmology/features/auth/presentation/view/login_view.dart';
import 'package:opthalmology/features/auth/users_bloc.dart';
import 'package:opthalmology/shared/navigator/go_buttons/to_settings.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../login_bloc.dart';

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
        listenTo: usersBloc.registerForm,
        builder: () => Column(
          children: [
            IsAuthenticatedStatusView(),
            const Spacer(),
            if (!authBloc.isAuth)
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: usersBloc.nameFormField.controller,
                      decoration: InputDecoration(
                        hintText: 'enter your name...',
                        labelText: 'name',
                        errorText: usersBloc.nameFormField.error,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      readOnly: usersBloc.registerForm.isFormReadOnly,
                      enabled: usersBloc.registerForm.isFormEnabled,
                      controller: usersBloc.emailFormField.controller,
                      decoration: InputDecoration(
                        hintText: 'enter your email...',
                        labelText: 'email',
                        errorText: usersBloc.emailFormField.error,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: usersBloc.passwordFormField.controller,
                      decoration: InputDecoration(
                        hintText: 'enter your password...',
                        labelText: 'password',
                        errorText: usersBloc.passwordFormField.error,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: OnFormSubmissionBuilder(
                      listenTo: usersBloc.registerForm,
                      onSubmitting: () => CircularProgressIndicator(),
                      child: ElevatedButton(
                        focusNode: usersBloc.registerForm.submitFocusNode,
                        onPressed: usersBloc.registerForm.isValid
                            ? () {
                                if (usersBloc.registerForm.isValid) {
                                  usersBloc.registerForm.submit();
                                } else {
                                  print('Nothing happened');
                                }
                              }
                            : null,
                        child: Text('Register'),
                      ),
                    ),
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
