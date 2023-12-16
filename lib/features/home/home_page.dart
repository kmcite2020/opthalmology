import 'package:flutter/material.dart';
import '../core/extensions.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../core/navigator.dart';
import 'home_page_action_widget.dart';

class HomePage extends ReactiveStatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'Home'.text(),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          HomePageActionWidget(
            icon: Icons.quiz,
            onPressed: () {
              navigator.to(Routes.quizzes);
            },
            label: 'Quizzes',
          ),
          HomePageActionWidget(
            icon: Icons.question_answer,
            onPressed: () {
              navigator.to(Routes.questions);
            },
            label: 'Questions',
          ),
          HomePageActionWidget(
            icon: Icons.settings,
            onPressed: () => navigator.to(Routes.configurations),
            label: 'Configurations',
          ),
        ],
      ).pad(),
    );
  }
}
