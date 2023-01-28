import 'package:flutter/material.dart';
import 'package:opthalmology/features/settings/interface.dart';

class SettingsBloc {
  SettingsInterface get interface => settingsInterface;
  ThemeMode get themeMode => interface.themeMode;
  MaterialColor get color => interface.materialColor;
  String? get font => interface.font; //GoogleFonts.getFont(fontRM.state).fontFamily
  double get padding => interface.padding;
  double get border => interface.border;
  double get appBarHeight => 80;
  set themeMode(val) => interface.themeMode = val;
  set color(val) => interface.materialColor = val;
  set font(val) => interface.font = val;
  set padding(val) => interface.padding = val;
  set border(val) => interface.border = val;
}

final settingsBloc = SettingsBloc();
