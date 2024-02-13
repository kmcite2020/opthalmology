import '../main.dart';

class App extends UI {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: themes.theme(),
      darkTheme: themes.darkTheme(),
      themeMode: themes.themeMode(),
      routerDelegate: navigator.routerDelegate,
      routeInformationParser: navigator.routeInformationParser,
    );
  }
}
