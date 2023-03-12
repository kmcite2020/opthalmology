// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:opthalmology/features/auth/presentation/view/super_user.dart';
import 'package:opthalmology/features/home/view/view.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../../features/settings/view/view.dart';
import '../../utils.dart';

class GotoSettingsPageButton extends ReactiveStatelessWidget {
  const GotoSettingsPageButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => RM.navigate.to(const SettingsPage()),
      tooltip: 'setting',
      icon: const Icon(Icons.settings),
    );
  }
}

class GotoHomePageButton extends ReactiveStatelessWidget {
  const GotoHomePageButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => RM.navigate.to(const HomeView()),
      tooltip: 'home',
      icon: const Icon(Icons.home),
    );
  }
}

class GotoUsersViewSuper extends ReactiveStatelessWidget {
  const GotoUsersViewSuper({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => RM.navigate.to(const UserViewSuper()),
      tooltip: 'super_user',
      icon: const Icon(
        Icons.subdirectory_arrow_left,
      ),
    );
  }
}
