import 'package:flutter/material.dart';
import 'package:opthalmology/shared/utils.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import 'interface.dart';
import 'repository.dart';
import 'user.dart';

class AuthBloc {
  AuthInterface get interface => authInterface;
  void logout() => interface.logout();
  User? get currentUser => interface.currentUser;
  bool get isAuthenticated => interface.currentUser != null;
  List<User> getAllUsers() => interface.getAllUsers();

  /// controllers for login and register
  late final loginForm = RM.injectForm(
    autovalidateMode: AutovalidateMode.always,
    submit: () async {
      interface.login(
        email: emailFormField.text,
        password: passwordFormField.text,
      );
      clearControllers();
    },
  );
  late final registerForm = RM.injectForm(
    autovalidateMode: AutovalidateMode.always,
    submit: () async {
      interface.register(
        name: nameFormField.text,
        email: emailFormField.text,
        password: passwordFormField.text,
      );
      clearControllers();
    },
  );
  List<String? Function(String?)>? validators(String type) => [
        (value) {
          if (value!.isEmpty) {
            return 'please enter $type';
          } else {
            return null;
          }
        },
      ];
  late final nameFormField = RM.injectTextEditing(validators: validators('name'));
  late final emailFormField = RM.injectTextEditing(validators: validators('email'));
  late final passwordFormField = RM.injectTextEditing(validators: validators('password'));

  void clearControllers() {
    nameFormField.reset();
    emailFormField.reset();
    passwordFormField.reset();
    // snackBar('controllers cleared');
  }
}

final AuthBloc auth = AuthBloc();
