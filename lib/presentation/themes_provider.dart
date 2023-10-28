import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

import 'blocs/configuration_bloc.dart';

final themesProvider = ThemesProvider();

class ThemesProvider {
  ThemeData theme() => FlexThemeData.light(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: configurationBloc.configuration.materialColor,
        ),
        subThemesData: FlexSubThemesData(defaultRadius: 20),
        appBarStyle: FlexAppBarStyle.primary,
        lightIsWhite: true,
        useMaterial3: true,
      ).copyWith(
        switchTheme: SwitchThemeData(
          thumbIcon: const MaterialStatePropertyAll(Icon(Icons.color_lens)),
          thumbColor: MaterialStatePropertyAll(
            configurationBloc.configuration.materialColor.shade200,
          ),
        ),
      );
  ThemeData darkTheme() => FlexThemeData.dark(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: configurationBloc.configuration.materialColor,
          brightness: Brightness.dark,
        ),
        subThemesData: FlexSubThemesData(defaultRadius: 20),
        appBarStyle: FlexAppBarStyle.primary,
        darkIsTrueBlack: true,
        useMaterial3: true,
      ).copyWith(
        switchTheme: SwitchThemeData(
          thumbIcon: const MaterialStatePropertyAll(Icon(Icons.color_lens)),
          thumbColor: MaterialStatePropertyAll(configurationBloc.configuration.materialColor.shade200),
        ),
      );
  ThemeMode themeMode() => configurationBloc.configuration.themeMode;
}
