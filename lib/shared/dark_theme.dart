import 'package:flutter/material.dart';

import '../features/settings/controller.dart';

ThemeData get darkTheme => ThemeData(
      cardColor: settings.color,
      disabledColor: settings.color,
      dividerColor: settings.color,
      highlightColor: settings.color,
      scaffoldBackgroundColor: settings.color.shade800,
      canvasColor: settings.color.shade900,
      focusColor: settings.color.shade400,
      hintColor: settings.color,
      hoverColor: settings.color,
      indicatorColor: settings.color,
      primaryColorDark: settings.color.shade800,
      primaryColorLight: settings.color.shade200,
      colorSchemeSeed: settings.color,
      secondaryHeaderColor: settings.color,
      shadowColor: settings.color,
      splashColor: settings.color,
      unselectedWidgetColor: settings.color.withAlpha(100),
      dialogTheme: DialogTheme(backgroundColor: settings.color.shade700),
      popupMenuTheme: PopupMenuThemeData(
        color: settings.color,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(settings.borderRadius)),
      ),
      appBarTheme: AppBarTheme(backgroundColor: settings.color.shade900, elevation: 10, toolbarHeight: settings.appBarHeight),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 10,
          minimumSize: const Size(100, 40),
          backgroundColor: settings.color.shade300,
          foregroundColor: settings.color.shade900,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(settings.borderRadius),
          ),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
            elevation: 10,
            minimumSize: const Size(100, 40),
            backgroundColor: settings.color.shade600,
            foregroundColor: settings.color.shade900,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(settings.borderRadius))),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
            elevation: 10,
            minimumSize: const Size(100, 40),
            backgroundColor: settings.color.shade800,
            foregroundColor: settings.color.shade200,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(settings.borderRadius))),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: settings.color.shade800,
        hoverColor: settings.color.shade900,
        focusColor: settings.color.shade600,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(settings.borderRadius)),
      ),
      cardTheme: CardTheme(
        color: settings.color.shade900,
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(settings.borderRadius),
        ),
        margin: EdgeInsets.all(settings.padding),
      ),
      listTileTheme: ListTileThemeData(
        tileColor: settings.color.shade900,
        selectedTileColor: settings.color.shade600,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(settings.borderRadius)),
      ),
      brightness: Brightness.dark,
      useMaterial3: true,
      fontFamily: settings.font,
      switchTheme: SwitchThemeData(
        thumbColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return null;
          }
          if (states.contains(MaterialState.selected)) {
            return settings.color;
          }
          return null;
        }),
        trackColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return null;
          }
          if (states.contains(MaterialState.selected)) {
            return settings.color;
          }
          return null;
        }),
      ),
      radioTheme: RadioThemeData(
        fillColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return null;
          }
          if (states.contains(MaterialState.selected)) {
            return settings.color;
          }
          return null;
        }),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return null;
          }
          if (states.contains(MaterialState.selected)) {
            return settings.color;
          }
          return null;
        }),
      ),
      bottomAppBarTheme: BottomAppBarTheme(color: settings.color),
      // colorScheme: ColorScheme(background: settingsModel.materialColor).copyWith(error: settingsModel.materialColor),
    );
