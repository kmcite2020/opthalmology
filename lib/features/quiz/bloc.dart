// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:opthalmology/features/questions/bloc.dart';
import 'package:opthalmology/features/questions/models/question.dart';
import 'package:opthalmology/features/questions/repository.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../chapters/chapters_enum.dart';
import 'model.dart';

final QuizManager quizManager = QuizManager();

class QuizManager {
  final chapterRM = RM.inject<Chapter>(
    () => Chapter.catarct,
    stateInterceptor: (currentSnap, nextSnap) {
      if (questionBloc.numberOfQuestionsByChapter(nextSnap.state) == 0) {
        RM.scaffold.showSnackBar(const SnackBar(content: Text('No questions')));
      } else {
        return nextSnap;
      }
      return null;
    },
  );
  Chapter get chapter => quizModel.chapter;
  set chapter(Chapter value) => quizModel = quizModel.copyWith(chapter: value);
  late final quizModelRM = RM.inject<QuizModel>(
    () => const QuizModel(
      chapter: Chapter.catarct,
    ),
    stateInterceptor: (currentSnap, nextSnap) {
      return nextSnap;
    },
  );
  QuizModel get quizModel => quizModelRM.state;
  set quizModel(QuizModel value) => quizModelRM.state = value;

  bool get tutorMode => quizModel.timeRemaining == 0;
  bool get timedMode => quizModel.timeRemaining != 0;
  void onTutorModeChanged(value) {
    // tutorModeRM.state = value;
  }
  void onTimedModeChanged(value) {
    // timedModeRM.state = value;
  }

  ///animation
  final timeAnimaton = RM.injectAnimation(duration: 5.seconds, shouldAutoStart: true);
  late AnimationController animationController;
  late Animation animation;
  void startTest() {
    quizManager.quizModel = quizManager.quizModel.copyWith(isStart: true);
  }

  Option? get currentOption => quizModel.currentOption;
  set currentOption(Option? value) => quizModel = quizModel.copyWith(
        currentOption: value,
        currentQuestionIndex: null,
      );

  int get score => quizModel.score;

  int get currentQuestionIndex => quizModel.currentQuestionIndex;

  void nextQuestion() {
    quizModel = quizModel.copyWith(
      currentQuestionIndex: quizModel.currentQuestionIndex + 1,
      isSubmitted: false,
    );
  }

  void previousQuestion() {
    quizModel = quizModel.copyWith(
      currentQuestionIndex: quizModel.currentQuestionIndex + 1,
      isSubmitted: false,
    );
  }

  List<Option> get optionsByQuestion => currentQuestion.options;
  List<OptionType> get optionTypes => OptionType.values;
  Question get currentQuestion => questionInterface.getQuestionByChapterAndIndex(chapter, currentQuestionIndex);

  bool get isStart => quizModel.currentQuestionIndex <= 0;
  bool get isEnd => quizModel.currentQuestionIndex == questionBloc.numberOfQuestionsByChapter(chapter) - 1;

  bool get isSubmitted => quizModel.isSubmitted;
  bool isCorrect(OptionType optionType, Question question) {
    if (optionType == question.correctType) {
      return true;
    } else {
      return false;
    }
  }

  bool submit() {
    print(currentOption!.optionType == currentQuestion.correctType);
    quizModel = quizModel.copyWith(isSubmitted: true);
    return currentOption!.optionType == currentQuestion.correctType;
  }
}
