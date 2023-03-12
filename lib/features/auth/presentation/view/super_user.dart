import 'package:flutter/material.dart';
import 'package:opthalmology/features/auth/login_bloc.dart';
import 'package:opthalmology/features/auth/users_bloc.dart';
import 'package:opthalmology/shared/navigator/go_buttons/to_settings.dart';
import 'package:opthalmology/shared/utils.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../models/user_model.dart';
import '../../models/user_params.dart';
import 'is_auth_status_view.dart';

class UserViewSuper extends ReactiveStatelessWidget {
  const UserViewSuper({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "All Users",
        ),
        automaticallyImplyLeading: false,
        centerTitle: true,
        actions: const [GotoHomePageButton()],
      ),
      body: const SuperUserListView(),
    );
  }
}

class SuperUserListView extends StatelessWidget {
  const SuperUserListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        const IsAuthenticatedStatusView(),
        for (final User userModel in usersBloc.users)
          ListTile(
            onTap: () => loginBloc.login(
              params: UserParams(
                email: userModel.email,
                password: userModel.password,
              ),
            ),
            onLongPress: () => usersBloc.deleteUser(
              parameters: UserParams(
                email: userModel.email,
                password: userModel.password,
              ),
            ),
            title: Text(
              userModel.email,
            ),
            subtitle: Column(
              children: [
                Text(
                  userModel.name,
                ),
                Text(
                  userModel.password,
                ),
              ],
            ),
          ).pad,
      ],
    );
  }
}
