import 'user.dart';

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
