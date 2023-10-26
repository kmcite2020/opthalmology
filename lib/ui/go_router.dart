part of 'ui.dart';

@Riverpod()
GoRouter goRouter(GoRouterRef ref) {
  return GoRouter(
    routes: [
      GoRoute(
        name: 'home',
        path: '/',
        builder: (context, state) => const HomePage(),
        routes: [
          GoRoute(
            name: 'questions',
            path: QuestionsPage.path,
            builder: (context, state) => const QuestionsPage(),
          ),
          GoRoute(
            name: 'configuration',
            path: ConfigurationPage.path,
            builder: (context, state) => const ConfigurationPage(),
          ),
        ],
      ),
    ],
  );
}
