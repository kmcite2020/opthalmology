import 'dart:async';
import 'dart:developer';

import 'package:isar/isar.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../domain/models/models.dart';
import '../../domain/repositories/repositories.dart';
import '../ui/ui.dart';

part 'questions_bloc.dart';

final QuizzesBloc quizzesBloc = QuizzesBloc();

class QuizzesBloc {
  final quizzesRM = RM.injectStream(
    quizzesRepository.watchQuizzes,
    initialState: <Quiz>[],
  );
  List<Quiz> get quizzes => quizzesRM.state;

  addQuiz(Quiz quiz) {
    quizzesRepository.addQuiz(quiz);
  }

  removeQuiz(Quiz quiz) {
    quizzesRepository.removeQuiz(quiz);
  }

  final quizCreateRM = RM.inject(
    () => null,
  );
  void createQuiz() {}
}

late final QuizzesRepository quizzesRepository = QuizzesRepository();

class QuizzesRepository {
  Stream<List<Quiz>> watchQuizzes() => isar.quizs.where().watch(fireImmediately: true);
  addQuiz(Quiz quiz) {}
  removeQuiz(Quiz quiz) {}
}
