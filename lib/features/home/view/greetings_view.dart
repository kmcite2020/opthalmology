// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:opthalmology/shared/utils.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../auth/auth_bloc.dart';
import '../../auth/login_bloc.dart';
import '../../questions/bloc.dart';
import '../../settings/settings_bloc.dart';

class GreetingsView extends ReactiveStatelessWidget {
  const GreetingsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Hello",
            textScaleFactor: 4,
          ).pad,
          Text(
            "Dr. ${authBloc.user?.name}",
            textScaleFactor: 2,
          ).pad,
          Text("Total Questions ${questionBloc.numberOfQuestions} ", textScaleFactor: 1.5).pad,
        ],
      ),
    ).pad;
  }
}
