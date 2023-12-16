import 'package:states_rebuilder/states_rebuilder.dart';

import 'quiz.dart';
import 'quizzes_repository.dart';

final QuizzesBloc quizzesBloc = QuizzesBloc();

class QuizzesBloc {
  final quizzesRM = RM.injectStream(
    quizzesRepository.watchQuizzes,
    initialState: <Quiz>[],
  );
  List<Quiz> get quizzes => quizzesRM.state;

  void addQuiz(Quiz quiz) {
    quizzesRepository.addQuiz(quiz);
  }

  void removeQuiz(Quiz quiz) {
    quizzesRepository.removeQuiz(quiz);
  }

  final quizCreateRM = RM.inject(
    () => null,
  );
  void createQuiz() {}
}
