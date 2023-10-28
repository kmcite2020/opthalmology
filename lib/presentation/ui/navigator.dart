// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'ui.dart';

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
