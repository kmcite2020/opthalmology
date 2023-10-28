// ignore_for_file: body_might_complete_normally_nullable

part of 'blocs.dart';

class QuestionsBloc {
  static final to = QuestionsBloc();
  late final StreamSubscription<List<Question>> sub;
  void dispose() => sub.cancel();
  QuestionsBloc() {
    try {
      setStatus(QuestionsStatus.loading);
      sub = questionsRepository.watchQuestions().listen(
        (questions) {
          setQuestions(questions);
          log('event');
        },
      );
      setStatus(QuestionsStatus.resting);
    } catch (e) {
      setStatus(QuestionsStatus.error);
    }
  }
  final questionsRM = RM.inject<QuestionsState>(
    () => QuestionsState(),
  );
  QuestionsState get questionsState => questionsRM.state;
  set questionsState(QuestionsState value) => questionsRM.setState(
        (s) {
          s = value;
        },
      );

  void setStatus(QuestionsStatus status) => questionsState = questionsState..questionsStatus = status;
  void setQuestions(List<Question> questions) => questionsState = questionsState..questions = questions;

  void addQuestion(Question question) {
    QuestionsRepository().setQuestion(question);
  }
}
