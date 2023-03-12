// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: prefer_const_constructors

import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:uuid/uuid.dart';

import '../../chapters/chapters_enum.dart';

enum OptionType { a, b, c, d }

class Option extends Equatable {
  final String description;
  final OptionType optionType;
  const Option({
    required this.description,
    required this.optionType,
  });

  Option copyWith({
    String? description,
    OptionType? optionType,
  }) {
    return Option(
      description: description ?? this.description,
      optionType: optionType ?? this.optionType,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'optionType': OptionType.values.indexOf(optionType),
    };
  }

  factory Option.fromMap(Map<String, dynamic> map) {
    return Option(
      description: map['description'] as String,
      optionType: OptionType.values[map['optionType']],
    );
  }

  String toJson() => json.encode(toMap());

  factory Option.fromJson(String source) => Option.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [description, optionType];
}

class Question extends Equatable {
  final String id;
  final String questionName;
  final Chapter chapter;
  final List<Option> options;
  final OptionType correctType;
  final String explaination;
  const Question({
    required this.id,
    required this.questionName,
    required this.chapter,
    required this.options,
    required this.correctType,
    required this.explaination,
  });

  static List<Question> fromListJson(String source) {
    final List result = jsonDecode(source) as List;
    return result.map((e) => Question.fromJson(e)).toList();
  }

  static String toListJson(List<Question> questions) {
    final List result = questions.map((eachQuestion) => eachQuestion.toJson()).toList();
    return jsonEncode(result);
  }

  Question copyWith({
    String? id,
    String? questionName,
    Chapter? chapter,
    List<Option>? options,
    OptionType? correctType,
    String? explaination,
  }) {
    return Question(
      id: id ?? this.id,
      questionName: questionName ?? this.questionName,
      chapter: chapter ?? this.chapter,
      options: options ?? this.options,
      correctType: correctType ?? this.correctType,
      explaination: explaination ?? this.explaination,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'questionName': questionName,
      'chapter': Chapter.values.indexOf(chapter),
      'options': options.map((x) => x.toMap()).toList(),
      'correctType': OptionType.values.indexOf(correctType),
      'explaination': explaination,
    };
  }

  factory Question.fromMap(Map<String, dynamic> map) {
    return Question(
      id: map['id'] as String,
      questionName: map['questionName'] as String,
      chapter: Chapter.values[map['chapter']],
      options: List<Option>.from(
        (map['options'] as List<int>).map<Option>(
          (x) => Option.fromMap(x as Map<String, dynamic>),
        ),
      ),
      correctType: OptionType.values[map['correctType']],
      explaination: map['explaination'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Question.fromJson(String source) => Question.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props {
    return [
      id,
      questionName,
      chapter,
      options,
      correctType,
      explaination,
    ];
  }
}

Question get questionDummy => Question(
      id: Uuid().v1(),
      questionName: 'questionName>current',
      chapter: Chapter.catarct,
      options: const [
        Option(
          description: 'descriptionA',
          optionType: OptionType.a,
        ),
        Option(
          description: 'descriptionB',
          optionType: OptionType.b,
        ),
        Option(
          description: 'descriptionC',
          optionType: OptionType.c,
        ),
        Option(
          description: 'descriptionD',
          optionType: OptionType.d,
        ),
      ],
      correctType: OptionType.a,
      explaination: 'explaination',
    );
