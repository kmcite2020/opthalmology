// ignore_for_file: public_member_api_docs, sort_constructors_first
part of '../blocs.dart';

@Riverpod()
class QuestionsBloc extends _$QuestionsBloc {
  @override
  QuestionsBlocState build() => QuestionsBlocState(
        questions: ref.watch(questionsRepositoryProvider).questions(),
      );
}
