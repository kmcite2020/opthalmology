import 'package:flutter/material.dart';
import 'package:opthalmology/shared/utils.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../questions/view/questions_view.dart';
import '../../quiz/bloc.dart';
import '../../quiz/view/quiz_view.dart';
import '../../settings/settings_bloc.dart';
import '../chapters_enum.dart';

class ChaptersView extends ReactiveStatelessWidget {
  const ChaptersView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (final eachChapter in Chapter.values)
          Container(
            margin: EdgeInsets.all(settingsBloc.padding),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(settingsBloc.border),
              border: Border.all(),
            ),
            child: ListTile(
              leading: CircleAvatar(
                child: Text(
                  eachChapter.numberOfQuestions,
                ),
              ),
              onTap: () {
                quizManager.chapter = eachChapter;
                RM.navigate.to(QuizView());
              },
              title: Text(eachChapter.name, textScaleFactor: 1),
              trailing: IconButton(
                onPressed: () {
                  RM.navigate.to(QuestionsView(chapter: eachChapter));
                },
                icon: const Icon(Icons.show_chart),
              ),
            ).pad,
          ),
      ],
    );
  }
}
