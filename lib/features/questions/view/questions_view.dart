import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../chapters/chapters_enum.dart';
import '../bloc.dart';
import '../models/question.dart';

class AddQuestionWidget extends ReactiveStatelessWidget {
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
        automaticallyImplyLeading: false,
        actions: const [BackButton()],
      ),
      body: ListView.builder(
        itemCount: questionBloc.numberOfQuestionsByChapter(chapter),
        itemBuilder: (BuildContext context, int index) {
          String questionNumber = (index + 1).toString();
          Question question = questionBloc.getQuestionByChapter(chapter)[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              onLongPress: () => questionBloc.deleteQuestion(question),
              title: Text("Q.$questionNumber ${question.questionName}"),
              subtitle: Column(
                children: [
                  for (final Option option in question.options) Text(" ${option.optionType.name}. ${option.description}"),
                  Text(question.id),
                  Text(question.chapter.toString()),
                  Text(question.explaination),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
