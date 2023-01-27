import 'package:flutter/material.dart';

import '../features/settings/controller.dart';

ThemeData get lightTheme => ThemeData(
      listTileTheme: ListTileThemeData(
        tileColor: settings.color.shade200,
        selectedTileColor: settings.color.shade400.withAlpha(200),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(settings.borderRadius),
        ),
      ),
      cardTheme: CardTheme(
        color: settings.color.shade200,
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(settings.borderRadius),
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
      scaffoldBackgroundColor: settings.color.shade100,
      timePickerTheme: TimePickerThemeData(
        backgroundColor: settings.color.shade200,
        dayPeriodShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(settings.borderRadius),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(settings.borderRadius),
        ),
        hourMinuteShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(settings.borderRadius),
        ),
      ),
      canvasColor: settings.color.shade200,
      focusColor: settings.color.shade400,
      hintColor: settings.color,
      hoverColor: settings.color.shade400,
      indicatorColor: settings.color,
      // primaryColor: color,
      primaryColorDark: settings.color.shade800,
      primaryColorLight: settings.color.shade200,
      // primarySwatch: Colors.blue,
      secondaryHeaderColor: settings.color,
      shadowColor: settings.color,
      splashColor: settings.color,
      unselectedWidgetColor: settings.color.withAlpha(100),
      dialogTheme: DialogTheme(
        elevation: 10,
        backgroundColor: settings.color.shade200,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(settings.borderRadius)),
      ),
      popupMenuTheme: PopupMenuThemeData(
        color: settings.color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            settings.borderRadius,
          ),
        ),
      ),
      appBarTheme: AppBarTheme(backgroundColor: settings.color.shade100, elevation: 10, toolbarHeight: settings.appBarHeight),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: settings.color.shade900,
          foregroundColor: settings.color.shade100,
          minimumSize: const Size(100, 40),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              settings.borderRadius,
            ),
          ),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          minimumSize: const Size(100, 40),
          backgroundColor: settings.color.shade700,
          foregroundColor: settings.color.shade900,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              settings.borderRadius,
            ),
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: settings.color.shade800,
          minimumSize: const Size(100, 40),
          foregroundColor: settings.color.shade200,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              settings.borderRadius,
            ),
          ),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        // contentPadding: EdgeInsets.all(18),
        filled: true,
        fillColor: settings.color.shade200,
        hoverColor: settings.color.shade600,
        focusColor: settings.color.shade900,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(settings.borderRadius),
        ),
      ),
      colorSchemeSeed: settings.color,

      brightness: Brightness.light,
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
    );
