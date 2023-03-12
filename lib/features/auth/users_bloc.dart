// ignore_for_file: await_only_futures

import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import 'models/user_model.dart';
import 'models/user_params.dart';

class UsersBloc {
  final usersRM = RM.inject<Users>(
    () => const Users(users: []),
    persist: () => PersistState(
      key: 'USERS',
      toJson: (s) => s.toJson(),
      fromJson: (json) => Users.fromJson(json),
    ),
  );
  set users(List<User> value) => usersRM.state = Users(users: users);

  List<User> get users => usersRM.state.users;

  void register({required UserParams parameters}) async => users = [...users, User.fromParams(parameters)];

  deleteUser({required UserParams parameters}) {}

  late final registerForm = RM.injectForm(
    autovalidateMode: AutovalidateMode.always,
    submit: () async {
      final params = UserParams(
        name: nameFormField.text,
        email: emailFormField.text,
        password: passwordFormField.text,
      );
      // authRepository.register(parameters: params);
      register(parameters: params);
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

final UsersBloc usersBloc = UsersBloc();
