import 'package:flutter/material.dart';
import 'package:opthalmology/shared/utils.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../interface.dart';

class IsAuthenticatedStatusView extends ReactiveStatelessWidget {
  const IsAuthenticatedStatusView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: auth.isAuthenticated ? const Text('Authenticated') : const Text('Not Authenticated').pad,
    );
  }
}
