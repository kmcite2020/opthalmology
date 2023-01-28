import 'dart:convert';
import 'dart:developer';

import 'package:states_rebuilder/states_rebuilder.dart';

import 'interface.dart';
import 'user.dart';

final AuthInterface authInterface = AuthRepository();

class AuthRepository implements AuthInterface {
  final currentUserRM = RM.inject<User?>(
    () => null,
    persist: () => PersistState(
      debugPrintOperations: true,
      key: 'user',
      toJson: (s) {
        return jsonEncode(s?.toJson());
      },
      fromJson: (json) => User.fromJson(jsonDecode(json)),
    ),
  );
  final usersRM = RM.inject<List<User>>(
    () => [
      const User(
        email: 'test@test',
        password: '123456',
        name: 'Test User',
      )
    ],
    persist: () => PersistState(
      key: 'users',
      toJson: (s) => User.toListJson(s),
      fromJson: (json) => User.fromListJson(json),
    ),
  );
  @override
  User? get currentUser => currentUserRM.state;
  @override
  List<User> getAllUsers() => usersRM.state;

  @override
  void login({
    required String email,
    required String password,
  }) {
    for (final User user in usersRM.state) {
      if (email == user.email) {
        if (password == user.password) {
          currentUserRM.state = user;
          log('</\\>');
          // return user;
        } else {}
      } else {}
    }
  }

  @override
  void logout() {
    currentUserRM.state = null;
  }

  @override
  User register({
    required String name,
    required String email,
    required String password,
  }) {
    final User userModel = User(
      name: name,
      email: email,
      password: password,
    ); // constructed user
    usersRM.state = [...usersRM.state, userModel]; // added to users
    currentUserRM.state = userModel; // logged in
    return userModel; // returned
  }

  @override
  void deleteUser(User user) {
    usersRM.state = [
      for (final eachUser in usersRM.state)
        if (eachUser != user) eachUser
    ];
    if (currentUser != null) {
      currentUserRM.state = null;
    }
  }
}
