import 'package:opthalmology/features/questions/interface.dart';
import 'package:opthalmology/features/questions/models/question.dart';

import '../chapters/chapters.dart';

class QuestionBloc {
  QuestionInterface get interface => QuestionRepository();
  bool get isEmpty => interface.getAllQuestions().isEmpty;
  void addQuestion(Question question) => interface.addQuestion(question);
  void deleteAllQuestion() => interface.deleteAllQuestion();
  void deleteQuestion(Question question) => interface.deleteQuestion(question);
  bool isEmptyByChapter(Chapter chapter) => interface.getQuestionByChapter(chapter).isEmpty;
  int numberOfQuestionsByChapter(Chapter chapter) => interface.getQuestionByChapter(chapter).length;
  int get numberOfQuestions => interface.getAllQuestions().length;

  getQuestionByChapter(Chapter chapter) => interface.getQuestionByChapter(chapter);
}

final QuestionBloc questionBloc = QuestionBloc();
