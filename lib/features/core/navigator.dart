import 'package:states_rebuilder/states_rebuilder.dart';

import '../home/home_page.dart';
import '../quizzes/quizzes_page.dart';
import '../settings/configuration_page.dart';
import '../questions/questions_page.dart';

final navigator = RM.injectNavigator(
  initialLocation: Routes.home,
  routes: {
    Routes.home: (data) => const HomePage(),
    Routes.questions: (data) => const QuestionsPage(),
    Routes.question: (data) => const QuestionsPage(),
    Routes.configurations: (data) => const ConfigurationPage(),
    Routes.quizzes: (data) => QuizzesPage(),
    Routes.takeQuiz: (data) => TakeQuizPage(),
  },
);

abstract class Routes {
  static const home = '/';
  static const configurations = '/configurations';
  static const questions = '/questions';
  static const question = '/question';
  static const quizzes = '/quizzes';
  static const takeQuiz = '/takeQuiz';
}
