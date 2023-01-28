// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:async';

import 'package:opthalmology/features/test/interface.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../chapters/chapters_enum.dart';

class TestBloc {
  TestInterface get interface => testInterface; // repo/interface => core
  late Chapter chapter = interface.chapter;
  // set currentChapter(val) => interface.chapter = val;

  final tutorModeRM = false.inj();
  final timedModeRM = false.inj();
  bool get tutorMode => tutorModeRM.state;
  bool get timedMode => timedModeRM.state;
  void onTutorModeChanged(value) => tutorModeRM.state = value;
  void onTimedModeChanged(value) => timedModeRM.state = value;

  ///animation
  final timeRM = RM.inject<int>(() => 5);
  late Timer timer;

  // final timeRM = RM.inject(() => 0);
  // int _time = 0;
  set time(int value) {
    timeRM.state = value;
  }

  int get time => timeRM.state;

  int maxTime = 20;

  void startTimer() {
    timer = Timer.periodic(
      1.seconds,
      (timer) {
        if (time < 1) {
          timer.cancel();
        } else {
          time--;
        }
      },
    );
  }
}

final TestBloc testBloc = TestBloc();
final TestManager testManager = TestManager();

class TestManager {
  int currentQuestionIndex = 0;
  int score = 0;
  void nextQuestion() {}
  void previousQuestion() {}
  bool submitQuestion() {
    return false;
  }

  void storeResults() {}
}
