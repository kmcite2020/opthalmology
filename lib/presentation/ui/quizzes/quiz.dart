// ignore_for_file: public_member_api_docs, sort_constructors_first
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

  static Quiz? fromID(quizID) => isar.quizs.getSync(quizID);

  @override
  String toString() {
    return 'Quiz(id: $id, title: $title, author: $author, duration: $duration, difficultyLevel: $difficultyLevel, chapter: $chapter, instructions: $instructions, metadata: $metadata, userScores: $userScores, randomizeQuestions: $randomizeQuestions, isPublic: $isPublic, accessCode: $accessCode, dateCreated: $dateCreated, lastModified: $lastModified, questions: $questions)';
  }
}

@Embedded()
class UserScore {
  String? username;
  int? score;
  DateTime? timestamp;

  @override
  String toString() => 'UserScore(username: $username, score: $score, timestamp: $timestamp)';
}
