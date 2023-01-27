import 'package:flutter/material.dart';

import '../../../features/auth/view/login.dart';
import '../navigator.dart';

class GotoLoginViewButton extends StatelessWidget {
  const GotoLoginViewButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => navigator.toPageless(const LoginView()),
      tooltip: 'login',
      icon: const Icon(Icons.login),
    );
  }
}
