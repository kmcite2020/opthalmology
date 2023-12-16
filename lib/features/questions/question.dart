// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';

part 'question.g.dart';

@Embedded()
@Collection()
@CopyWith()
@JsonSerializable()
class Question {
  @Id()
  final int id;
  final String? title;
  final String? a;
  final String? b;
  final String? c;
  final String? d;
  const Question({
    required this.id,
    this.title,
    this.a,
    this.b,
    this.c,
    this.d,
  });

  factory Question.fromJson(json) => _$QuestionFromJson(json);
  toJson() => _$QuestionToJson(this);
}

@JsonSerializable()
@CopyWith()
class QuestionsState {
  final List<Question> questions;
  final QuestionsStatus questionsStatus;
  QuestionsState({
    this.questions = const [],
    this.questionsStatus = QuestionsStatus.resting,
  });
  factory QuestionsState.fromJson(json) => _$QuestionsStateFromJson(json);
  toJson() => _$QuestionsStateToJson(this);
}

enum QuestionsStatus { loading, resting, error }
