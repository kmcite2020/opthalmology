import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../../shared/list_tile.dart';
import '../../questions/view/questions_view.dart';
import '../../settings/bloc.dart';
import '../../test/bloc.dart';
import '../../test/view/test_screen.dart';
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
            child: ListTilePadded(
              leading: CircleAvatar(
                child: Text(
                  eachChapter.numberOfQuestions,
                ),
              ),
              onTap: () {
                testBloc.chapter = eachChapter;
                RM.navigate.to(TestScreen());
              },
              title: Text(eachChapter.name, textScaleFactor: 1),
              trailing: IconButton(
                onPressed: () {
                  RM.navigate.to(QuestionsView(chapter: eachChapter));
                },
                icon: const Icon(Icons.show_chart),
              ),
            ),
          ),
      ],
    );
  }
}
