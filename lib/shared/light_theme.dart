import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../features/settings/settings_bloc.dart';

ThemeData get lightTheme => ThemeData(
      listTileTheme: ListTileThemeData(
        tileColor: settingsBloc.color.shade200,
        selectedTileColor: settingsBloc.color.shade400.withAlpha(200),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(settingsBloc.border),
        ),
      ),
      cardTheme: CardTheme(
        color: settingsBloc.color.shade200,
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(settingsBloc.border),
        ),
        // margin: EdgeInsets.all(padding),
      ),
      // backgroundColor: Colors.blue,
      // bottomAppBarColor: Colors.blue,
      // cardColor: Colors.blue,
      // colorScheme: Colors.blue,
      // dialogBackgroundColor: Colors.blue,
      // disabledColor: Colors.blue,
      // dividerColor: Colors.blue,
      // errorColor: Colors.blue,
      // highlightColor: Colors.blue,
      scaffoldBackgroundColor: settingsBloc.color.shade100,
      timePickerTheme: TimePickerThemeData(
        backgroundColor: settingsBloc.color.shade200,
        dayPeriodShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(settingsBloc.border),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(settingsBloc.border),
        ),
        hourMinuteShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(settingsBloc.border),
        ),
      ),
      canvasColor: settingsBloc.color.shade200,
      focusColor: settingsBloc.color.shade400,
      hintColor: settingsBloc.color,
      hoverColor: settingsBloc.color.shade400,
      indicatorColor: settingsBloc.color,
      // primaryColor: color,
      primaryColorDark: settingsBloc.color.shade800,
      primaryColorLight: settingsBloc.color.shade200,
      // primarySwatch: Colors.blue,
      secondaryHeaderColor: settingsBloc.color,
      shadowColor: settingsBloc.color,
      splashColor: settingsBloc.color,
      unselectedWidgetColor: settingsBloc.color.withAlpha(100),
      dialogTheme: DialogTheme(
        elevation: 10,
        backgroundColor: settingsBloc.color.shade200,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(settingsBloc.border)),
      ),
      popupMenuTheme: PopupMenuThemeData(
        color: settingsBloc.color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            settingsBloc.border,
          ),
        ),
      ),
      appBarTheme: AppBarTheme(backgroundColor: settingsBloc.color.shade100, elevation: 10, toolbarHeight: settingsBloc.appBarHeight),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: settingsBloc.color.shade900,
          foregroundColor: settingsBloc.color.shade100,
          minimumSize: const Size(100, 40),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              settingsBloc.border,
            ),
          ),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          minimumSize: const Size(100, 40),
          backgroundColor: settingsBloc.color.shade700,
          foregroundColor: settingsBloc.color.shade900,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              settingsBloc.border,
            ),
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: settingsBloc.color.shade800,
          minimumSize: const Size(100, 40),
          foregroundColor: settingsBloc.color.shade200,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              settingsBloc.border,
            ),
          ),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        // contentPadding: EdgeInsets.all(18),
        filled: true,
        fillColor: settingsBloc.color.shade200,
        hoverColor: settingsBloc.color.shade600,
        focusColor: settingsBloc.color.shade900,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(settingsBloc.border),
        ),
      ),
      colorSchemeSeed: settingsBloc.color,

      brightness: Brightness.light,
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
    );
