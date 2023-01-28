// ignore_for_file: prefer_const_constructors

import 'package:opthalmology/shared/utils.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:uuid/uuid.dart';

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
  void addQuestion(Question question2) {
    final Question question = Question(
      id: Uuid().v1(),
      questionName: 'questionName',
      chapter: Chapter.catarct,
      options: [
        Option(
          description: 'description',
          optionType: OptionType.a,
        ),
        Option(
          description: 'description',
          optionType: OptionType.b,
        ),
        Option(
          description: 'description',
          optionType: OptionType.c,
        ),
        Option(
          description: 'description',
          optionType: OptionType.d,
        ),
      ],
      correctType: OptionType.a,
      explaination: 'explaination',
    );
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
}
