// ignore_for_file: prefer_const_constructors

import 'package:opthalmology/shared/utils.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../chapters/chapters_enum.dart';
import 'interface.dart';
import 'models/question.dart';

final QuestionInterface questionInterface = QuestionRepository();

class QuestionRepository implements QuestionInterface {
  final questionsRM = RM.inject<List<Question>>(
    () => [],
    persist: () => PersistState(
      key: 'questions2',
      toJson: (s) => Question.toListJson(s),
      fromJson: (json) => Question.fromListJson(json),
    ),
  );
  @override
  List<Question> getAllQuestions() => questionsRM.state;

  @override
  List<Question> getQuestionsByAmount(int amount) => questionsRM.state.take(amount).toList();

  @override
  List<Question> getQuestionByChapter(Chapter chapter) {
    return questionsRM.state.where((question) => question.chapter == chapter).toList();
  }

  @override
  void addQuestion(Question question) {
    questionsRM.state = [...questionsRM.state, question];
  }

  @override
  void deleteAllQuestion() {
    snackBar('All Questions Deleted');
    questionsRM.state = [];
  }

  @override
  void deleteQuestion(Question question) {
    questionsRM.state = [
      for (final eachQuestion in questionsRM.state)
        if (eachQuestion != question) eachQuestion
    ];
  }

  @override
  bool isSameQuestionStatementPresent(String questionStatement) {
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
