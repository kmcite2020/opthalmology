// ignore_for_file: prefer_const_constructors, must_be_immutable, unused_local_variable, unused_import

import 'package:flutter/material.dart';
import 'package:opthalmology/features/questions/bloc.dart';
import 'package:opthalmology/features/quiz/bloc.dart';
import 'package:opthalmology/features/settings/settings_bloc.dart';
import 'package:states_rebuilder/scr/state_management/rm.dart';

import '../../../shared/utils.dart';
import '../../chapters/chapters_enum.dart';
import 'test_started.dart';

@immutable
class QuizView extends ReactiveStatelessWidget {
  QuizView({super.key});
  final Chapter chapter = quizManager.chapter;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          '${chapter.name}Test Screen',
        ),
        actions: const [BackButton()],
      ),
      body: ListView(
        children: [
          Center(
            child: Text(
              chapter.numberOfQuestions,
              textScaleFactor: 10,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(settingsBloc.padding),
            child: SwitchListTile(
              title: Text("Tutor Mode"),
              value: quizManager.tutorMode,
              onChanged: quizManager.onTutorModeChanged,
            ),
          ),
          if (!quizManager.tutorMode)
            Padding(
              padding: EdgeInsets.all(settingsBloc.padding),
              child: SwitchListTile(
                title: Text("Timed Mode"),
                value: quizManager.timedMode,
                onChanged: quizManager.onTimedModeChanged,
              ),
            ),
          Padding(
            padding: EdgeInsets.all(settingsBloc.padding),
            child: questionBloc.getQuestionByChapter(chapter).isEmpty
                ? Text('No questions available to start the test', textScaleFactor: 2)
                : ElevatedButton(
                    onPressed: () {
                      RM.navigate.to(TestStarted(chapter: chapter));
                      quizManager.startTest();
                    },
                    child: Text(
                      'START TEST',
                    ),
                  ),
          )
        ],
      ),
    );
  }
}
