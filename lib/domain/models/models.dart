// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:project_opthalmology/main.dart';

part 'models.g.dart';

@Collection()
class Question {
  Id id = Isar.autoIncrement;
  String? title;
  String? a;
  String? b;
  String? c;
  String? d;

  @override
  String toString() {
    return 'Question(id: $id, title: $title, a: $a, b: $b, c: $c, d: $d)';
  }
}

class Configuration implements ToJson {
  int? _themeModeValue;

  ThemeMode get themeMode => ThemeMode.values[_themeModeValue ?? 0];
  set themeMode(ThemeMode value) => _themeModeValue = ThemeMode.values.indexOf(value);

  int? _materialColorValue;

  MaterialColor get materialColor => Colors.primaries[_materialColorValue ?? 0];
  set materialColor(MaterialColor value) => _materialColorValue = Colors.primaries.indexOf(value);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      '_themeModeValue': _themeModeValue,
      '_materialColorValue': _materialColorValue,
    };
  }

  factory Configuration.fromMap(Map<String, dynamic> map) {
    return Configuration()
      .._themeModeValue = map['_themeModeValue']
      .._materialColorValue = map['_materialColorValue'];
  }
  String toJson() => json.encode(toMap());

  factory Configuration.fromJson(String source) => Configuration.fromMap(json.decode(source) as Map<String, dynamic>);
  Configuration();
}

enum QuestionsStatus { loading, resting, error }

class QuestionsState {
  List<Question>? _questions;
  QuestionsStatus? _questionsStatus;

  QuestionsStatus get questionsStatus => _questionsStatus ?? QuestionsStatus.resting;
  set questionsStatus(QuestionsStatus? value) => _questionsStatus = value;

  List<Question> get questions => _questions ?? [];
  set questions(List<Question>? value) => _questions = value;
}
