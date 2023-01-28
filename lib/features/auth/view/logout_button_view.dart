import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../settings/bloc.dart';
import '../interface.dart';

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
          onPressed: auth.isAuthenticated
              ? () {
                  auth.logout();
                }
              : null,
          child: const Text('Logout')),
    );
  }
}
