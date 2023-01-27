import 'package:opthalmology/features/auth/user.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

abstract class AuthInterface {
  void login({
    required String email,
    required String password,
  });
  void logout();
  UserModel register({
    required String name,
    required String email,
    required String password,
  });
  UserModel? get currentUser;
  bool get isAuth;
}

class AuthRepository implements AuthInterface {
  final currentUserRM = RM.inject<UserModel?>(() => null);
  final usersRM = RM.inject(() => [
        const UserModel(
          email: 'test@test',
          password: '123456',
          name: 'Test User',
        )
      ]);
  @override
  UserModel? get currentUser => currentUserRM.state;

  @override
  void login({
    required String email,
    required String password,
  }) =>
      currentUserRM.state = UserModel(
        email: email,
        password: password,
        name: '',
      );

  @override
  void logout() => currentUserRM.state = null;

  @override
  UserModel register({
    required String name,
    required String email,
    required String password,
  }) {
    final UserModel userModel = UserModel(
      name: name,
      email: email,
      password: password,
    ); // constructed user
    usersRM.state = [...usersRM.state, userModel]; // added to users
    currentUserRM.state = userModel; // logged in
    return userModel; // returned
  }

  @override
  bool get isAuth => currentUser == null;
}
