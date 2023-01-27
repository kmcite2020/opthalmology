import 'dart:async';

import 'package:flutter/material.dart';
import 'package:opthalmology/features/questions/bloc.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../chapters/chapters.dart';
import '../../settings/controller.dart';

@immutable
class TestStarted extends ReactiveStatelessWidget {
  TestStarted({required this.chapter, this.totalTime, super.key});
  final Chapter chapter;
  final int? totalTime;

  final Timer timer = Timer.periodic(500.milliseconds, (timer) {});
  // final totalTimeRM = StateProvider((ref) => 0);
  set time(int _) {
    // totalTimeRM.state = _;
  }

  // int get time => totalTimeRM.state;

  final maxTime = 1;

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
  Widget build(BuildContext context) {
    final padding = settings.padding;
    final borderRadius = settings.borderRadius;
    return Scaffold(
      appBar: AppBar(
        title: Text(chapter.name),
      ),
      body: Column(
        // shrinkWrap: true,
        children: [
          buildProgressBar(),
          Expanded(
            child: PageView.builder(
              onPageChanged: (val) {},
              itemCount: questionBloc.numberOfQuestionsByChapter(chapter),
              itemBuilder: (context, index) {
                final eachQuestion = questionBloc.getQuestionByChapter(chapter)[index];
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.all(padding),
                      padding: EdgeInsets.all(padding),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(borderRadius), border: Border.all()),
                      child: Text("${eachQuestion.questionName} ${index + 1}", textScaleFactor: 1.5),
                    ),
                    ...eachQuestion.options.map(
                      (eachOption) => Padding(
                        padding: EdgeInsets.all(padding),
                        child: RadioListTile(
                          value: eachOption,
                          title: Text(eachOption.description),
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

  Stack buildProgressBar() {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Padding(
          padding: EdgeInsets.all(settings.padding),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(settings.borderRadius),
            child: const LinearProgressIndicator(value: 20 / 60, minHeight: 40),
          ),
        ),
        const Text('time', textScaleFactor: 2)
      ],
    );
  }
}
