// ignore_for_file: prefer_const_constructors

import 'package:states_rebuilder/states_rebuilder.dart';

import '../chapters/chapters_enum.dart';
import 'models/question.dart';

final QuestionRepository questionInterface = QuestionRepository();

class QuestionRepository {
  final questionsRM = RM.inject<List<Question>>(
    () => [],
    // persist: () => PersistState(
    //   key: 'questions2',
    //   toJson: (s) => jsonEncode(s.map((e) => e.toJson()).toList()),
    //   fromJson: (json) => (jsonDecode(json) as List).map((e) => Question.fromJson(e)).toList(),
    // ),
  );
  List<Question> getAllQuestions() => questionsRM.state;
  List<Question> getQuestionsByAmount(int amount) => questionsRM.state.take(amount).toList();
  List<Question> getQuestionByChapter(Chapter chapter) => questionsRM.state.where((question) => question.chapter == chapter).toList();
  Question getQuestionByChapterAndIndex(Chapter chapter, int index) => getQuestionByChapter(chapter)[index];

  void addQuestion(Question question) => questionsRM.state = [...questionsRM.state, question];

  void deleteAllQuestion() => questionsRM.state = [];
  void deleteQuestion(Question question) => questionsRM.state = [
        for (final eachQuestion in questionsRM.state)
          if (eachQuestion != question) eachQuestion
      ];
  bool isSameQuestionStatementPresent(String questionStatement) {
    // validatorFunction
    for (final Question question in questionsRM.state) {
      if (question.questionName == questionStatement) {
        return true;
      } else {
        return false;
      }
    }
    return false;
  }
}
