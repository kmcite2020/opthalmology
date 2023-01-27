// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../bloc.dart';

class RegisterView extends ReactiveStatelessWidget {
  final loginFormKey = GlobalKey<FormState>();

  RegisterView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hi..., Wellcome.", textScaleFactor: 1.3),
      ),
      body: OnFormBuilder(
        listenTo: auth.registerForm,
        builder: () => Column(
          children: [
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                autovalidateMode: AutovalidateMode.always,
                controller: auth.emailFormField.controller,
                decoration: InputDecoration(
                  hintText: 'enter your email...',
                  labelText: 'id',
                  errorText: auth.emailFormField.error,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                autovalidateMode: AutovalidateMode.always,
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
              child: ElevatedButton(
                onPressed: () {
                  if (loginFormKey.currentState!.validate()) {
                    // ref.read(authenticationProvider.notifier).signIn(id: idController.text, password: passwordController.text);
                  } else {
                    print('Nothing happened');
                  }
                },
                child: Text('Sign in'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  if (loginFormKey.currentState!.validate()) {
                    // ref.read(authenticationProvider.notifier).createAccount(id: idController.text, password: passwordController.text);
                  } else {
                    print('Nothing happened');
                  }
                },
                child: Text('Create account'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
