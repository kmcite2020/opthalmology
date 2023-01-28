// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:opthalmology/features/auth/view/register_view.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../../features/auth/view/login_view.dart';
import '../../utils.dart';

class GotoRegisterViewButton extends ReactiveStatelessWidget {
  const GotoRegisterViewButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => RM.navigate.to(RegisterView()),
      tooltip: 'register',
      icon: const Icon(Icons.signpost_outlined),
    );
  }
}
