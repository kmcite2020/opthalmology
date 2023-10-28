part of 'ui.dart';

class App extends ReactiveStatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: themesProvider.theme(),
      darkTheme: themesProvider.darkTheme(),
      themeMode: themesProvider.themeMode(),
      routerDelegate: navigator.routerDelegate,
      routeInformationParser: navigator.routeInformationParser,
    );
  }
}
