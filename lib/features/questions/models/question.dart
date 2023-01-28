// ignore_for_file: prefer_const_constructors

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

import '../../chapters/chapters_enum.dart';

part 'question.freezed.dart';
part 'question.g.dart';

enum OptionType { a, b, c, d }

@freezed
class Option with _$Option {
  factory Option({
    required String description,
    required OptionType optionType,
  }) = _Option;

  factory Option.fromJson(Map<String, dynamic> json) => _$OptionFromJson(json);
}

@freezed
class Question with _$Question {
  factory Question({
    required String id,
    required String questionName,
    required Chapter chapter,
    required List<Option> options,
    required OptionType correctType,
    required String explaination,
  }) = _Question;
  factory Question.fromJson(Map<String, dynamic> json) => _$QuestionFromJson(json);

  static List<Question> fromListJson(String source) {
    final List result = jsonDecode(source) as List;
    return result.map((e) => Question.fromJson(e)).toList();
  }

  static String toListJson(List<Question> questions) {
    final List result = questions.map((eachQuestion) => eachQuestion.toJson()).toList();
    return jsonEncode(result);
  }
}

final Question questionDummy = Question(
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
