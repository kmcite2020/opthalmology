import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:uuid/uuid.dart';

import '../chapters/chapters_enum.dart';
import 'models/question.dart';
import 'repository.dart';

class QuestionBloc {
  QuestionRepository get interface => questionInterface;
  bool get isEmpty => interface.getAllQuestions().isEmpty;
  bool isEmptyByChapter(Chapter chapter) => interface.getQuestionByChapter(chapter).isEmpty;
  int get numberOfQuestions => interface.getAllQuestions().length;
  int numberOfQuestionsByChapter(Chapter chapter) => interface.getQuestionByChapter(chapter).length;
  List<Question> getQuestionByChapter(Chapter chapter) => interface.getQuestionByChapter(chapter);

  void addQuestion(Question question) => interface.addQuestion(question);
  void deleteAllQuestion() => interface.deleteAllQuestion();
  void deleteQuestion(Question question) => interface.deleteQuestion(question);

  late final addQuestionForm = RM.injectForm(
    autovalidateMode: AutovalidateMode.always,
    submit: () async {
      interface.addQuestion(
        Question(
          // ignore: prefer_const_constructors
          id: Uuid().v1(),
          questionName: question.value,
          chapter: chapter.value,
          options: [
            Option(description: a.text, optionType: OptionType.a),
            Option(description: b.text, optionType: OptionType.b),
            Option(description: c.text, optionType: OptionType.c),
            Option(description: d.text, optionType: OptionType.d),
          ],
          correctType: correct.value,
          explaination: explaination.value,
        ),
      );
    },
  );

  late final question = RM.injectTextEditing(
    validators: [
      (v) {
        if (!v!.contains("?")) {
          return 'should contain ? mark';
        }
        if (interface.isSameQuestionStatementPresent(v)) {
          return 'this question already present';
        }
        if (v.length < 10) {
          return 'should contain at least 10 characters';
        }

        return null;
      }
    ],
  );
  late final a = RM.injectTextEditing(
    validators: [
      (v) {
        if (v!.isEmpty) {
          return 'should not be empty';
        }
        return null;
      }
    ],
  );
  late final b = RM.injectTextEditing(
    validators: [
      (v) {
        if (v!.isEmpty) {
          return 'should not be empty';
        }
        return null;
      }
    ],
  );
  late final c = RM.injectTextEditing(
    validators: [
      (v) {
        if (v!.isEmpty) {
          return 'should not be empty';
        }
        return null;
      }
    ],
  );
  late final d = RM.injectTextEditing(
    validators: [
      (v) {
        if (v!.isEmpty) {
          return 'should not be empty';
        }
        return null;
      }
    ],
  );
  late final explaination = RM.injectTextEditing(
    validators: [
      (v) {
        if (v!.isEmpty) {
          return 'should not be empty';
        }
        if (!v.endsWith('.')) {
          return 'please add full stop';
        }
        return null;
      }
    ],
  );
  late final correct = RM.injectFormField<OptionType>(OptionType.a);
  late final chapter = RM.injectFormField<Chapter>(Chapter.catarct);
}

final QuestionBloc questionBloc = QuestionBloc();
