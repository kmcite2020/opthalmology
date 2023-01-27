import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:opthalmology/shared/utils.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

@immutable
class Settings {
  ThemeMode get themeMode => themeModeRM.state;
  MaterialColor get color => colorRM.state;
  String? get font => GoogleFonts.getFont(fontRM.state).fontFamily;
  double get padding => paddingRM.state;
  double get borderRadius => borderRM.state;
  double get appBarHeight => 80;
  final themeModeRM = RM.inject<ThemeMode>(
    () => ThemeMode.system,
    persist: () => PersistState(
      key: 'themeMode',
      toJson: (s) => jsonEncode(themeModes.indexOf(s)),
      fromJson: (json) => themeModes[jsonDecode(json)],
    ),
  );
  final colorRM = RM.inject<MaterialColor>(
    () => Colors.blue,
    persist: () => PersistState(
      key: 'color',
      toJson: (s) => jsonEncode(colors.indexOf(s)),
      fromJson: (json) => colors[jsonDecode(json)],
    ),
  );
  final fontRM = RM.inject<String>(
    () => 'DM Mono',
    persist: () => PersistState(key: 'font'),
  );
  final paddingRM = RM.inject<double>(
    () => 10,
    persist: () => PersistState(key: 'padding'),
  );
  final borderRM = RM.inject<double>(
    () => 20,
    persist: () => PersistState(key: 'border'),
  );

  set themeMode(val) => themeModeRM.state;
  set color(val) => colorRM.state = val;
  set font(val) => fontRM.state = val;
  set padding(val) => paddingRM.state = val;
  set border(val) => borderRM.state = val;
}

final settings = Settings();
