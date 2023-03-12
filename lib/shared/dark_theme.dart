import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../features/settings/settings_bloc.dart';

ThemeData get darkTheme => ThemeData(
      cardColor: settingsBloc.color,
      disabledColor: settingsBloc.color,
      dividerColor: settingsBloc.color,
      highlightColor: settingsBloc.color,
      scaffoldBackgroundColor: settingsBloc.color.shade800,
      canvasColor: settingsBloc.color.shade900,
      focusColor: settingsBloc.color.shade400,
      hintColor: settingsBloc.color,
      hoverColor: settingsBloc.color,
      indicatorColor: settingsBloc.color,
      primaryColorDark: settingsBloc.color.shade800,
      primaryColorLight: settingsBloc.color.shade200,
      colorSchemeSeed: settingsBloc.color,
      secondaryHeaderColor: settingsBloc.color,
      shadowColor: settingsBloc.color,
      splashColor: settingsBloc.color,
      unselectedWidgetColor: settingsBloc.color.withAlpha(100),
      dialogTheme: DialogTheme(backgroundColor: settingsBloc.color.shade700),
      popupMenuTheme: PopupMenuThemeData(
        color: settingsBloc.color,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(settingsBloc.border)),
      ),
      appBarTheme: AppBarTheme(backgroundColor: settingsBloc.color.shade900, elevation: 10, toolbarHeight: settingsBloc.appBarHeight),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 10,
          minimumSize: const Size(100, 40),
          backgroundColor: settingsBloc.color.shade300,
          foregroundColor: settingsBloc.color.shade900,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(settingsBloc.border),
          ),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
            elevation: 10,
            minimumSize: const Size(100, 40),
            backgroundColor: settingsBloc.color.shade600,
            foregroundColor: settingsBloc.color.shade900,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(settingsBloc.border))),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
            elevation: 10,
            minimumSize: const Size(100, 40),
            backgroundColor: settingsBloc.color.shade800,
            foregroundColor: settingsBloc.color.shade200,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(settingsBloc.border))),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: settingsBloc.color.shade800,
        hoverColor: settingsBloc.color.shade900,
        focusColor: settingsBloc.color.shade600,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(settingsBloc.border)),
      ),
      cardTheme: CardTheme(
        color: settingsBloc.color.shade900,
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(settingsBloc.border),
        ),
        margin: EdgeInsets.all(settingsBloc.padding),
      ),
      listTileTheme: ListTileThemeData(
        tileColor: settingsBloc.color.shade900,
        selectedTileColor: settingsBloc.color.shade600,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(settingsBloc.border)),
      ),
      brightness: Brightness.dark,
      useMaterial3: true,
      fontFamily: GoogleFonts.getFont(settingsBloc.font!).fontFamily,
      switchTheme: SwitchThemeData(
        thumbColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return null;
          }
          if (states.contains(MaterialState.selected)) {
            return settingsBloc.color;
          }
          return null;
        }),
        trackColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return null;
          }
          if (states.contains(MaterialState.selected)) {
            return settingsBloc.color;
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
            return settingsBloc.color;
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
            return settingsBloc.color;
          }
          return null;
        }),
      ),
      bottomAppBarTheme: BottomAppBarTheme(color: settingsBloc.color),
      // colorScheme: ColorScheme(background: settingsModel.materialColor).copyWith(error: settingsModel.materialColor),
    );
