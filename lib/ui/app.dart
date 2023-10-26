part of 'ui.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final ThemesService themesService = ref.watch(themesServiceProvider);
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: ref.watch(goRouterProvider),
      theme: themesService.theme(),
      darkTheme: themesService.darkTheme(),
      themeMode: themesService.themeMode(),
    );
  }
}
