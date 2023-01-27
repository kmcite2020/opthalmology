import 'package:opthalmology/features/settings/models/models.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

class AuthBloc {
  final currentUserRM = RM.inject<UserModel?>(() => null);
  void login(String name, String email, String password) => currentUserRM.state = UserModel(name: name, email: email, password: password);
  void logout() => currentUserRM.state = null;

  UserModel? get currentUser => currentUserRM.state;

  bool get isAuthenticated => currentUser != null;

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
