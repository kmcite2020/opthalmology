// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'services.dart';

@riverpod
ThemesService themesService(ThemesServiceRef ref) {
  return ThemesService(
      configuration: ref.watch(configurationBlocProvider) ?? const Configuration());
}

class ThemesService {
  final Configuration _configuration;
  ThemesService({
    required Configuration configuration,
  }) : _configuration = configuration;

  ThemeData theme() => FlexThemeData.light(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: _configuration.materialColor,
        ),
        appBarStyle: FlexAppBarStyle.primary,
        lightIsWhite: _configuration.isTrueColors,
        useMaterial3: _configuration.isMaterial3,
      );
  ThemeData darkTheme() => FlexThemeData.dark(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: _configuration.materialColor,
          brightness: Brightness.dark,
        ),
        appBarStyle: FlexAppBarStyle.primary,
        darkIsTrueBlack: _configuration.isTrueColors,
        useMaterial3: _configuration.isMaterial3,
      );
  ThemeMode themeMode() => _configuration.themeMode;
}
