import 'package:flutter/material.dart';
import 'package:opthalmology/features/quiz/bloc.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../../settings/settings_bloc.dart';

class BottomRowWidget extends ReactiveStatelessWidget {
  const BottomRowWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(settingsBloc.padding),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                style: IconButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  minimumSize: const Size.fromHeight(70),
                ),
                onPressed: quizManager.isStart ? null : () => quizManager.previousQuestion(),
                icon: const Icon(Icons.keyboard_arrow_left_rounded),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(
                    70,
                  ),
                ),
                onPressed: !quizManager.isSubmitted
                    ? () {
                        quizManager.submit();
                      }
                    : null,
                child: const Text(
                  'Submit Answer',
                  textScaleFactor: 1.4,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                style: IconButton.styleFrom(minimumSize: const Size.fromHeight(70), backgroundColor: Theme.of(context).colorScheme.primary),
                onPressed: quizManager.isEnd
                    ? null
                    : () {
                        quizManager.nextQuestion();
                      },
                icon: const Icon(Icons.keyboard_arrow_right_rounded),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
