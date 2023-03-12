import 'package:flutter/material.dart';
import 'package:opthalmology/features/auth/auth_bloc.dart';
import 'package:opthalmology/shared/utils.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

class IsAuthenticatedStatusView extends ReactiveStatelessWidget {
  const IsAuthenticatedStatusView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: authBloc.isAuth ? const Text('Authenticated') : const Text('Not Authenticated').pad,
    );
  }
}
