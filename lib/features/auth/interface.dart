import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import 'user.dart';
part 'bloc.dart';
part 'repository.dart';

abstract class AuthInterface {
  void login({
    required String email,
    required String password,
  });
  void logout();
  User register({
    required String name,
    required String email,
    required String password,
  });
  User? get currentUser;
  List<User> getAllUsers();

  void deleteUser(User user) {}
}
