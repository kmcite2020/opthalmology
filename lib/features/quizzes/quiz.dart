// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';

import '../core/isar.dart';
import '../questions/question.dart';

part 'quiz.g.dart';

@CopyWith()
@JsonSerializable()
@Collection(accessor: 'quizzes')
class Quiz {
  @Id()
  final int id;
  final String? title;
  final String? author;
  @ignore
  final Duration? duration;
  final String? difficultyLevel;
  final String? chapter;
  final String? instructions;
  final Map<String, dynamic>? metadata;
  final List<UserScore>? userScores;
  final bool? randomizeQuestions;
  final bool? isPublic;
  final String? accessCode;
  final DateTime? dateCreated;
  final DateTime? lastModified;
  final List<Question>? questions;
  Quiz({
    this.id = 0,
    this.title,
    this.author,
    this.duration,
    this.difficultyLevel,
    this.chapter,
    this.instructions,
    this.metadata,
    this.userScores,
    this.randomizeQuestions,
    this.isPublic,
    this.accessCode,
    this.dateCreated,
    this.lastModified,
    this.questions,
  });

  static Quiz? fromID(quizID) => isar.quizs.get(quizID);

  factory Quiz.fromJson(json) => _$QuizFromJson(json);
  toJson() => _$QuizToJson(this);
}

@JsonSerializable()
@Embedded()
class UserScore {
  String? username;
  int? score;
  DateTime? timestamp;
  UserScore({
    this.username,
    this.score,
    this.timestamp,
  });
  factory UserScore.fromJson(json) => _$UserScoreFromJson(json);
  toJson() => _$UserScoreToJson(this);
}
