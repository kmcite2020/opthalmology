import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../../features/auth/view/login_view.dart';
import '../../utils.dart';

class GotoLoginViewButton extends ReactiveStatelessWidget {
  const GotoLoginViewButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => RM.navigate.to(const LoginView()),
      tooltip: 'login',
      icon: const Icon(Icons.login),
    );
  }
}
