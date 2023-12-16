import 'dart:async';

import '../core/isar.dart';
import 'quiz.dart';

final QuizzesRepository quizzesRepository = QuizzesRepository();

class QuizzesRepository {
  Stream<List<Quiz>> watchQuizzes() =>
      isar.quizs.where().watch(fireImmediately: true);
  void addQuiz(Quiz quiz) {}
  void removeQuiz(Quiz quiz) {}
}
