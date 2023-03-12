// ignore_for_file: must_be_immutable, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:opthalmology/shared/utils.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../chapters/chapters_enum.dart';
import '../../questions/bloc.dart';
import '../../questions/models/question.dart';
import '../bloc.dart';
import 'timer.dart';
import 'widgets/bottom_row_view.dart';

@immutable
class TestStarted extends ReactiveStatelessWidget {
  TestStarted({required this.chapter, this.totalTime = 60, super.key});
  final Chapter chapter;
  final int? totalTime;
  @override
  void didMountWidget(BuildContext context) {
    quizManager.timeAnimaton.controller?.forward();
    super.didMountWidget(context);
  }

  @override
  Widget build(BuildContext context) {
    final Question eachQuestion = questionBloc.getQuestionByChapter(chapter)[quizManager.currentQuestionIndex];
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('${chapter.name} test started'),
        actions: const [BackButton()],
      ),
      body: Column(
        // shrinkWrap: true,
        children: [
          if (!quizManager.tutorMode)
            if (quizManager.timedMode) TimerProgressView(),
          Text(eachQuestion.id).borderedPad,
          Text(
            "Q.${quizManager.currentQuestionIndex + 1} ${eachQuestion.questionName}",
            textScaleFactor: 1.5,
          ).pad,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              for (final Option eachOption in eachQuestion.options)
                RadioListTile<Option>(
                  value: eachOption,
                  title: Text(eachOption.description),
                  groupValue: quizManager.currentOption,
                  onChanged: quizManager.isSubmitted ? null : (value) => quizManager.currentOption = value!,
                  secondary: quizManager.isSubmitted
                      ? Icon(
                          quizManager.isCorrect(eachOption.optionType, eachQuestion) ? Icons.done : Icons.close,
                          color: quizManager.currentOption?.optionType == eachOption.optionType
                              ? quizManager.isCorrect(eachOption.optionType, eachQuestion)
                                  ? Theme.of(context).colorScheme.primary
                                  : Theme.of(context).colorScheme.error
                              : null,
                          size: 50,
                        )
                      : null,
                ).pad,
            ],
          ),
          if (quizManager.tutorMode) Text(eachQuestion.explaination).borderedPad,
          const Spacer(),
          const BottomRowWidget()
        ],
      ),
    );
  }
}
