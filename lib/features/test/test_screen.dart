// ignore_for_file: prefer_const_constructors, must_be_immutable, unused_local_variable

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:opthalmology/features/settings/controller.dart';
import 'package:opthalmology/features/test/controller.dart';
import 'package:states_rebuilder/scr/state_management/rm.dart';

import '../home/chapters.dart';
import '../home/controller.dart';

@immutable
class TestScreen extends ReactiveStatelessWidget {
  TestScreen({super.key});
  final Chapter chapter = test.currentChapter;

  @override
  Widget build(BuildContext context) {
    final padding = settings.padding;
    final borderRadius = settings.borderRadius;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          chapter.name,
        ),
      ),
      body: ListView(
        children: [
          // Center(
          //   child: Text(
          //     chapter.numberOfQuestions(ref).toString(),
          //     textScaleFactor: 10,
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SwitchListTile(
              title: Text("Tutor Mode"),
              value: test.tutorMode,
              onChanged: test.onTutorModeChanged,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SwitchListTile(
              title: Text("Timed Mode"),
              value: test.timedMode,
              onChanged: test.onTimedModeChanged,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(padding),
            child:

                //  chapter.numberOfQuestions(ref) == 0
                true
                    ? Text('No questions available to start the test')
                    // ignore: dead_code
                    : ElevatedButton(
                        onPressed: () {
                          // isStarted.toggle();
                          // RM.navigate.toAndRemoveUntil(TestStarted(chapter: chapter));

                          // ref.read(appWidgetProvider.notifier).to(TestStarted(chapter: chapter));
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

class TestStarted extends HookConsumerWidget {
  TestStarted({required this.chapter, this.totalTime, super.key});
  final Chapter chapter;
  final int? totalTime;

  late Timer timer;
  // final totalTimeRM = StateProvider((ref) => 0);
  set time(int _) {
    // totalTimeRM.state = _;
  }

  // int get time => totalTimeRM.state;

  int maxTime = 1;

  // void startTimer() {
  //   timer = Timer.periodic(
  //     500.milliseconds,
  //     (timer) {
  //       if (time < 1) {
  //         timer.cancel();
  //         RM.navigate.toAndRemoveUntil(TestEnded());
  //       } else {
  //         time--;
  //       }
  //     },
  //   );
  // }kt

  @override
  Widget build(BuildContext context, ref) {
    final padding = settings.padding;
    final borderRadius = settings.borderRadius;
    return Scaffold(
      appBar: AppBar(
        title: Text(chapter.name),
      ),
      body: Column(
        // shrinkWrap: true,
        children: [
          buildProgressBar(ref),
          Expanded(
            child: PageView.builder(
              onPageChanged: (val) {},
              // itemCount: ref.watch(GetNumberOfQuestionsOfChaptersProvider(chapter)),
              itemBuilder: (context, index) {
                final eachQuestion = [][index];
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.all(padding),
                      padding: EdgeInsets.all(padding),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(borderRadius), border: Border.all()),
                      child: Text(eachQuestion.questionName, textScaleFactor: 1.5),
                    ),
                    ...eachQuestion.options.map(
                      (eachOption) => Padding(
                        padding: EdgeInsets.all(padding),
                        child: RadioListTile(
                          value: eachOption,
                          title: Text(eachOption),
                          groupValue: eachOption,
                          onChanged: (value) {},
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Stack buildProgressBar(ref) {
    final borderRadius = settings.borderRadius;
    final padding = settings.padding;
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Padding(
          padding: EdgeInsets.all(padding),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(borderRadius),
            child: LinearProgressIndicator(value: 2 / 60, minHeight: 40),
          ),
        ),
        Text('time', textScaleFactor: 2)
      ],
    );
  }
}

class TestEnded extends HookConsumerWidget {
  const TestEnded({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          'Test Complete',
          textScaleFactor: 4,
        ),
      ),
    );
  }
}
