import '../../main.dart';

class HomePage extends UI {
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
