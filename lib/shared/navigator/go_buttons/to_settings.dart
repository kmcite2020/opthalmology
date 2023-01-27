import 'package:flutter/material.dart';

import '../../../features/settings/view.dart';
import '../navigator.dart';

class GotoSettingsPageButton extends StatelessWidget {
  const GotoSettingsPageButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => navigator.toPageless(const SettingsPage()),
      tooltip: 'setting',
      icon: const Icon(
        Icons.settings,
      ),
    );
  }
}
