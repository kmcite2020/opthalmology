// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:opthalmology/features/auth/models/user_params.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

class LoginBloc {
  void login({required UserParams params}) {}

  late final loginForm = RM.injectForm(
    autovalidateMode: AutovalidateMode.always,
    submit: () async {
      final params = UserParams(
        email: emailFormField.text,
        password: passwordFormField.text,
      );
      login(params: params);
      clearControllers();
    },
  );

  final nameFormField = RM.injectTextEditing();
  final emailFormField = RM.injectTextEditing();
  final passwordFormField = RM.injectTextEditing();

  void clearControllers() {
    nameFormField.reset();
    emailFormField.reset();
    passwordFormField.reset();
    // snackBar('controllers cleared');
  }
}

final LoginBloc loginBloc = LoginBloc();
