// ignore_for_file: public_member_api_docs, sort_constructors_first
part of '../blocs.dart';

enum QuestionBlocStatus { loading, resting, error }

class QuestionsBlocState {
  final List<Question> questions;
  final QuestionBlocStatus status;
  QuestionsBlocState({
    this.questions = const [],
    this.status = QuestionBlocStatus.resting,
  });
}
