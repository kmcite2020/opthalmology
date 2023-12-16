import 'package:states_rebuilder/states_rebuilder.dart';

import 'question.dart';
import 'questions_repository.dart';

final QuestionsManager questionsManager = QuestionsManager();

class QuestionsManager {
  late final questionsStateRM = RM.injectStream(
    () => questionsRepository.watchQuestions().map(
          (questions) => questionsState.copyWith(questions: questions),
        ),
  );

  bool get waiting => questionsStateRM.isWaiting;

  QuestionsState get questionsState => questionsStateRM.state;
  set questionsState(QuestionsState value) => questionsStateRM.state = value;

  void setStatus(QuestionsStatus status) =>
      questionsState = questionsState.copyWith(questionsStatus: status);
  void setQuestions(List<Question> questions) =>
      questionsState = questionsState.copyWith(questions: questions);

  void addQuestion(Question question) {
    questionsRepository.setQuestion(question);
  }
}
