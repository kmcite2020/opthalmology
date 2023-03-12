import 'package:states_rebuilder/states_rebuilder.dart';

import 'models/user_model.dart';

/// NO SERVICE NEEDED HERE
class AuthBloc {
  bool get isAuth => user != null;
  User? get user => currentUserRM.state;
  final currentUserRM = RM.inject<User?>(() => null);
  void logout() => currentUserRM.state = null;
  List<User> getAllUsers() => [];
}

final AuthBloc authBloc = AuthBloc();
