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
        title: Text("Wellcome...!", textScaleFactor: 2),
      ),
      body: OnFormBuilder(
        listenTo: auth.registerForm,
        builder: () => Column(
          children: [
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: auth.nameFormField.controller,
                decoration: InputDecoration(
                  hintText: 'enter your name...',
                  labelText: 'id',
                  errorText: auth.nameFormField.error,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
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
                onPressed: auth.registerForm.isValid
                    ? () {
                        if (auth.registerForm.isValid) {
                        } else {
                          print('Nothing happened');
                        }
                      }
                    : null,
                child: Text('Register'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
