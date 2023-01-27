import 'package:states_rebuilder/states_rebuilder.dart';

import '../chapters/chapters.dart';

class TestBloc {
  late final currentChapterRM = RM.inject<Chapter>(() => throw UnimplementedError());
  Chapter get currentChapter => currentChapterRM.state;
  set currentChapter(val) => currentChapterRM.state = val;
  final tutorModeRM = false.inj();
  final timedModeRM = false.inj();
  bool get tutorMode => tutorModeRM.state;
  bool get timedMode => timedModeRM.state;
  void onTutorModeChanged(value) => tutorModeRM.state = value;
  void onTimedModeChanged(value) => timedModeRM.state = value;
}

final TestBloc test = TestBloc();
