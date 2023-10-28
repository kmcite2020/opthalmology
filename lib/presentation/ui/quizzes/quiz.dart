part of '../ui.dart';

@Collection()
class Quiz {
  Id id = Isar.autoIncrement;
  String? title;
  String? author;
  @ignore
  Duration? duration;
  String? difficultyLevel;
  String? chapter;
  String? instructions;
  @ignore
  Map<String, dynamic>? metadata;
  List<UserScore>? userScores;
  bool? randomizeQuestions;
  bool? isPublic;
  String? accessCode;
  DateTime? dateCreated;
  DateTime? lastModified;
  @ignore
  List<Question>? questions;

  static Quiz? fromID(quizID) {
    return isar.quizs.getSync(quizID);
  }
}

@Embedded()
class UserScore {
  String? username;
  int? score;
  DateTime? timestamp;
}
