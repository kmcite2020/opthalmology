// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:opthalmology/shared/utils.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../auth/interface.dart';
import '../../questions/bloc.dart';
import '../../settings/bloc.dart';

class GreetingsView extends ReactiveStatelessWidget {
  const GreetingsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Hello",
          textScaleFactor: 4,
        ).pad,
        Text(
          "Dr. ${auth.currentUser?.name}",
          textScaleFactor: 2,
        ).pad,
        Text("Total Questions ${questionBloc.numberOfQuestions} ", textScaleFactor: 1.5).pad,
      ],
    );
  }
}
