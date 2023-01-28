// ignore_for_file: must_be_immutable, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import '../../questions/bloc.dart';
import '../../questions/models/question.dart';
import '../bloc.dart';
import 'timer.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../chapters/chapters_enum.dart';
import '../../settings/bloc.dart';
import 'widgets/bottom_row_view.dart';

@immutable
class TestStarted extends ReactiveStatelessWidget {
  TestStarted({required this.chapter, this.totalTime = 60, super.key});
  final Chapter chapter;
  final int? totalTime;
  @override
  void didMountWidget(BuildContext context) {
    testBloc.startTimer();
    super.didMountWidget(context);
  }

  @override
  Widget build(BuildContext context) {
    final Question eachQuestion = questionBloc.getQuestionByChapter(chapter)[testManager.currentQuestionIndex];
    return Scaffold(
      appBar: AppBar(
        title: Text('${chapter.name} test started'),
      ),
      body: Column(
        // shrinkWrap: true,
        children: [
          if (!testBloc.tutorMode)
            if (testBloc.timedMode) const TimerView(),
          Text(eachQuestion.id),
          // Expanded(
          //   child: PageView.builder(
          //     onPageChanged: (val) {},
          //     itemCount: questionBloc.numberOfQuestionsByChapter(chapter),
          //     itemBuilder: (context, index) {
          //       final Question eachQuestion = questionBloc.getQuestionByChapter(chapter)[index];
          //       return Column(
          //         crossAxisAlignment: CrossAxisAlignment.start,
          //         // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //         children: [
          //           Container(
          //             margin: EdgeInsets.all(padding),
          //             padding: EdgeInsets.all(padding),
          //             decoration: BoxDecoration(borderRadius: BorderRadius.circular(borderRadius), border: Border.all()),
          //             child: Text("${eachQuestion.questionName} ${index + 1}", textScaleFactor: 1.5),
          //           ),
          //           ...eachQuestion.options.map(
          //             (eachOption) => Padding(
          //               padding: EdgeInsets.all(padding),
          //               child: RadioListTile(
          //                 value: eachOption,
          //                 title: Text(eachOption.description),
          //                 groupValue: eachOption,
          //                 onChanged: (value) {},
          //               ),
          //             ),
          //           ),
          //           Text(eachQuestion.id),
          //           if (testBloc.tutorMode)
          //             Padding(
          //               padding: EdgeInsets.all(settings.padding),
          //               child: Text(eachQuestion.explaination),
          //             ),
          //         ],
          //       );
          //     },
          //   ),
          // ),
          const BottomRowWidget()
        ],
      ),
    );
  }
}

Stack buildProgressBar(int time, int maxTime) {
  return Stack(
    alignment: AlignmentDirectional.center,
    children: [
      Padding(
        padding: EdgeInsets.all(settingsBloc.padding),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(settingsBloc.border),
          child: LinearProgressIndicator(value: time.toDouble() / maxTime.toDouble(), minHeight: 40),
        ),
      ),
      const Text('time', textScaleFactor: 2)
    ],
  );
}
