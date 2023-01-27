import 'package:flutter/material.dart';
import 'package:opthalmology/features/questions/models/question.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../chapters/chapters.dart';

abstract class QuestionInterface {
  List<Question> getQuestionByChapter(Chapter chapter);
  List<Question> getAllQuestions();
  List<Question> getQuestionsByAmount(int amount);
  void addQuestion(Question question);
  void deleteAllQuestion();
  void deleteQuestion(Question question);
}

class QuestionRepository implements QuestionInterface {
  final questionsRM = RM.inject<List<Question>>(
    () => [],
    persist: () => PersistState(
      key: 'questions2',
      toJson: (s) => Question.toListJson(s),
      fromJson: (json) => Question.fromListJson(json),
      throttleDelay: 400,
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
    RM.scaffold.showSnackBar(
      const SnackBar(content: Text('All Questions Deleted')),
    );
    questionsRM.state = [];
  }

  @override
  void deleteQuestion(Question question) {
    questionsRM.state = [
      for (final eachQuestion in questionsRM.state)
        if (eachQuestion != question) eachQuestion
    ];
  }
}
