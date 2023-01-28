import 'package:flutter/material.dart';
import 'package:opthalmology/shared/navigator/go_buttons/to_settings.dart';
import 'package:opthalmology/shared/utils.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../interface.dart';
import '../user.dart';
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
      body: ListView(
        children: [
          const IsAuthenticatedStatusView(),
          for (final User userModel in auth.getAllUsers())
            ListTile(
              onTap: () => auth.interface.login(
                email: userModel.email,
                password: userModel.password,
              ),
              onLongPress: () => auth.interface.deleteUser(userModel),
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
      ),
    );
  }
}
