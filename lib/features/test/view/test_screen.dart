// ignore_for_file: prefer_const_constructors, must_be_immutable, unused_local_variable

import 'package:flutter/material.dart';
import 'package:opthalmology/features/questions/bloc.dart';
import 'package:opthalmology/features/settings/bloc.dart';
import 'package:opthalmology/features/test/bloc.dart';
import 'package:states_rebuilder/scr/state_management/rm.dart';

import '../../../shared/utils.dart';
import '../../chapters/chapters_enum.dart';
import 'test_started.dart';

@immutable
class TestScreen extends ReactiveStatelessWidget {
  TestScreen({super.key});
  final Chapter chapter = testBloc.chapter;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${chapter.name}Test Screen',
        ),
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
              value: testBloc.tutorMode,
              onChanged: testBloc.onTutorModeChanged,
            ),
          ),
          if (!testBloc.tutorMode)
            Padding(
              padding: EdgeInsets.all(settingsBloc.padding),
              child: SwitchListTile(
                title: Text("Timed Mode"),
                value: testBloc.timedMode,
                onChanged: testBloc.onTimedModeChanged,
              ),
            ),
          Padding(
            padding: EdgeInsets.all(settingsBloc.padding),
            child: questionBloc.getQuestionByChapter(chapter).isEmpty
                ? Text('No questions available to start the test', textScaleFactor: 2)
                : ElevatedButton(
                    onPressed: () {
                      RM.navigate.to(TestStarted(chapter: chapter));
                      // testBloc.startTimer();
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
