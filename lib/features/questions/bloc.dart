import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import 'interface.dart';
import 'models/question.dart';

import '../chapters/chapters_enum.dart';
import 'repository.dart';

class QuestionBloc {
  QuestionInterface get interface => questionInterface;
  bool get isEmpty => interface.getAllQuestions().isEmpty;
  bool isEmptyByChapter(Chapter chapter) => interface.getQuestionByChapter(chapter).isEmpty;
  int get numberOfQuestions => interface.getAllQuestions().length;
  int numberOfQuestionsByChapter(Chapter chapter) => interface.getQuestionByChapter(chapter).length;
  List<Question> getQuestionByChapter(Chapter chapter) => interface.getQuestionByChapter(chapter);

  void addQuestion(Question question) => interface.addQuestion(question);
  void deleteAllQuestion() => interface.deleteAllQuestion();
  void deleteQuestion(Question question) => interface.deleteQuestion(question);
}

final QuestionBloc questionBloc = QuestionBloc();

class QuestionManagerBloc {
  late final addQuestionForm = RM.injectForm(
    autovalidateMode: AutovalidateMode.always,
    submit: () async {},
  );

  late final question = RM.injectTextEditing();
  late final a = RM.injectTextEditing();
  late final b = RM.injectTextEditing();
  late final c = RM.injectTextEditing();
  late final d = RM.injectTextEditing();
  late final explaination = RM.injectTextEditing();
  late final correct = RM.injectFormField<OptionType>(OptionType.a);
  late final chapter = RM.injectFormField<Chapter>(Chapter.catarct);
}

final QuestionManagerBloc qmb = QuestionManagerBloc();
