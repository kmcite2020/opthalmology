import 'package:flutter/material.dart';

import '../../../features/auth/view/login.dart';
import '../navigator.dart';

class GotoRegisterViewButton extends StatelessWidget {
  const GotoRegisterViewButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => navigator.toPageless(const LoginView()),
      tooltip: 'register',
      icon: const Icon(Icons.contact_page),
    );
  }
}
