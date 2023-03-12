import 'package:flutter/material.dart';
import 'package:opthalmology/shared/utils.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../bloc.dart';

class DeleteAllQuestionsButton extends ReactiveStatelessWidget {
  const DeleteAllQuestionsButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: questionBloc.isEmpty ? null : () => questionBloc.deleteAllQuestion(),
      style: ElevatedButton.styleFrom(
        minimumSize: const Size.fromHeight(60),
        backgroundColor: Theme.of(context).colorScheme.error,
      ),
      child: const Text('DELETE ALL QUESTIONS'),
    ).pad;
  }
}
