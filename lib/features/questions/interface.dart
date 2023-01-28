import 'models/question.dart';

import '../chapters/chapters_enum.dart';

abstract class QuestionInterface {
  List<Question> getQuestionByChapter(Chapter chapter);
  List<Question> getAllQuestions();
  List<Question> getQuestionsByAmount(int amount);
  void addQuestion(Question question);
  void deleteAllQuestion();
  void deleteQuestion(Question question);
}
