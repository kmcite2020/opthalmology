import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:opthalmology/features/questions/bloc.dart';

import '../chapters/chapters_enum.dart';
import '../questions/models/question.dart';

class QuizModel extends Equatable {
  final Option? currentOption;
  final int? timeRemaining; // if null explaination mode or tutor mode
  final int score;
  final int currentQuestionIndex;
  final bool isSubmitted;
  final Chapter chapter;
  final bool isStart;
  final bool isEnd;
  List<Question> get questions => questionBloc.getQuestionByChapter(chapter);

  const QuizModel({
    this.timeRemaining = 60, // 60 seconds per question
    this.currentOption,
    this.score = 0, // initial score is 0
    this.currentQuestionIndex = 0,
    this.isSubmitted = false,
    this.isStart = true,
    this.isEnd = false,
    required this.chapter,
  });

  QuizModel copyWith({
    Chapter? chapter,
    Option? currentOption,
    int? timeRemaining,
    int? currentQuestionIndex,
    bool? isSubmitted,
    bool? isStart,
  }) {
    return QuizModel(
      chapter: chapter ?? this.chapter,
      currentOption: currentOption,
      timeRemaining: timeRemaining,
      currentQuestionIndex: currentQuestionIndex ?? this.currentQuestionIndex,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chapter': chapter.toMap(),
    };
  }

  factory QuizModel.fromMap(Map<String, dynamic> map) {
    return QuizModel(
      chapter: Chapter.fromMap(map['chapter']),
    );
  }

  String toJson() => json.encode(toMap());

  factory QuizModel.fromJson(String source) => QuizModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [chapter];
}
