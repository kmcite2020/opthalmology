import 'package:flutter/material.dart';
import 'package:opthalmology/features/chapters/chapters.dart';
import 'package:opthalmology/features/questions/bloc.dart';
import 'package:opthalmology/features/questions/models/question.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

class AddQuestionWidget extends StatelessWidget {
  const AddQuestionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        questionBloc.addQuestion(questionDummy);
      },
      icon: const Icon(Icons.text_snippet),
    );
  }
}

class QuestionsView extends ReactiveStatelessWidget {
  const QuestionsView({
    super.key,
    required this.chapter,
  });
  final Chapter chapter;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(chapter.name),
      ),
      body: ListView.builder(
        itemCount: questionBloc.numberOfQuestionsByChapter(chapter),
        itemBuilder: (BuildContext context, int index) {
          String questionNumber = (index + 1).toString();
          Question question = questionBloc.getQuestionByChapter(chapter)[index];
          return ListTile(
            title: Text("Q.$questionNumber ${question.questionName}"),
            subtitle: Column(
              children: [
                for (final Option option in question.options)
                  Text(
                    " ${option.optionType.name}. ${option.description}",
                  ),
                Text(question.id),
                Text(question.chapter.toString()),
                Text(question.explaination),
              ],
            ),
          );
        },
      ),
    );
  }
}
