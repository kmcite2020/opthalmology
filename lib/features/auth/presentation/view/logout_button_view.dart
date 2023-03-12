import 'package:flutter/material.dart';
import 'package:opthalmology/features/auth/auth_bloc.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../../settings/settings_bloc.dart';

class LogoutButtonView extends ReactiveStatelessWidget {
  const LogoutButtonView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(settingsBloc.padding),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: const Size.fromHeight(60),
          backgroundColor: Theme.of(context).colorScheme.error,
        ),
        onPressed: authBloc.isAuth
            ? () {
                authBloc.logout();
              }
            : null,
        child: const Text(
          'Logout',
        ),
      ),
    );
  }
}
