import 'package:opthalmology/features/auth/interface.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import 'user.dart';

class AuthBloc {
  AuthInterface get interface => AuthRepository();
  void login(String email, String password) {
    interface.login(email: email, password: password);
  }

  void logout() => interface.logout();
  void register(String name, String email, String password) => interface.register(name: name, email: email, password: password);

  UserModel? get currentUser => interface.currentUser;

  bool get isAuthenticated => interface.isAuth;

  /// controllers for login and register
  final loginForm = RM.injectForm();

  final registerForm = RM.injectForm();

  final nameFormField = RM.injectTextEditing();
  final emailFormField = RM.injectTextEditing(
    validators: [
      (value) {
        if (value!.isEmpty) {
          return 'please enter an email';
        } else {
          return null;
        }
      },
    ],
  );
  final passwordFormField = RM.injectTextEditing(
    validators: [
      (value) {
        if (value!.isEmpty) {
          return 'please enter a password';
        } else {
          return null;
        }
      },
    ],
  );
}

final AuthBloc auth = AuthBloc();
