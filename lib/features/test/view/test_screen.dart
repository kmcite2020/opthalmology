// ignore_for_file: prefer_const_constructors, must_be_immutable, unused_local_variable

import 'package:flutter/material.dart';
import 'package:opthalmology/features/questions/bloc.dart';
import 'package:opthalmology/features/settings/controller.dart';
import 'package:opthalmology/features/test/controller.dart';
import 'package:opthalmology/shared/navigator/navigator.dart';
import 'package:states_rebuilder/scr/state_management/rm.dart';

import '../../chapters/chapters.dart';
import 'test_started.dart';

@immutable
class TestScreen extends ReactiveStatelessWidget {
  TestScreen({super.key});
  final Chapter chapter = test.currentChapter;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          chapter.name,
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
            padding: EdgeInsets.all(settings.padding),
            child: SwitchListTile(
              title: Text("Tutor Mode"),
              value: test.tutorMode,
              onChanged: test.onTutorModeChanged,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(settings.padding),
            child: SwitchListTile(
              title: Text("Timed Mode"),
              value: test.timedMode,
              onChanged: test.onTimedModeChanged,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(settings.padding),
            child: questionBloc.getQuestionByChapter(chapter).isEmpty
                ? Text('No questions available to start the test', textScaleFactor: 2)
                : ElevatedButton(
                    onPressed: () {
                      navigator.toPageless(TestStarted(chapter: chapter));
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
