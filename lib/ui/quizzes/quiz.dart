part of '../ui.dart';

@CopyWith()
@Embedded()
class Quiz {
  final String title;
  final String author;
  final Duration duration;
  final String difficultyLevel;
  final String chapter;
  final String instructions;
  final Map<String, dynamic> metadata;
  final List<UserScore> userScores;
  final bool randomizeQuestions;
  final bool isPublic;
  final String accessCode;
  final DateTime dateCreated;
  final DateTime lastModified;
  final List<Question> questions;

  Quiz({
    required this.title,
    required this.author,
    required this.duration,
    required this.difficultyLevel,
    required this.chapter,
    required this.instructions,
    required this.metadata,
    required this.userScores,
    required this.randomizeQuestions,
    required this.isPublic,
    required this.accessCode,
    required this.dateCreated,
    required this.lastModified,
    this.questions = const [],
  });
}

@CopyWith()
@Embedded()
class UserScore {
  final String username;
  final int score;
  final DateTime timestamp;

  UserScore({
    required this.username,
    required this.score,
    required this.timestamp,
  });
}
