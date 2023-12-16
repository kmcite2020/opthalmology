// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:project_opthalmology/features/quizzes/quiz.dart';

part 'quiz_taking.g.dart';

@CopyWith()
@JsonSerializable()
class QuizTakingState {
  final Quiz? quiz;
  QuizTakingState({
    this.quiz,
  });
  factory QuizTakingState.fromJson(json) => _$QuizTakingStateFromJson(json);
  toJson() => _$QuizTakingStateToJson(this);
}
