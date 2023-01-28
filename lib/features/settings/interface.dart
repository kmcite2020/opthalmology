import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../shared/utils.dart';

abstract class SettingsInterface {
  ThemeMode get themeMode;
  MaterialColor get materialColor;
  String? get font;
  double get padding;
  double get border;
  set themeMode(ThemeMode themeMode);
  set materialColor(MaterialColor materialColor);
  set font(font);
  set padding(double padding);
  set border(double border);
}

final SettingsInterface settingsInterface = SettingsRepository();

class SettingsRepository implements SettingsInterface {
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
    // persist: () => PersistState(key: 'font'),
  );
  final paddingRM = RM.inject<double>(
    () => 10,
    persist: () => PersistState(key: 'padding'),
  );
  final borderRM = RM.inject<double>(
    () => 20,
    persist: () => PersistState(key: 'border'),
  );

  @override
  ThemeMode get themeMode => themeModeRM.state;
  @override
  MaterialColor get materialColor => colorRM.state;
  @override
  String? get font => fontRM.state; //GoogleFonts.getFont(fontRM.state).fontFamily;
  @override
  double get padding => paddingRM.state;
  @override
  double get border => borderRM.state;
  double get appBarHeight => 80;

  @override
  set themeMode(val) => themeModeRM.state = val;
  @override
  set materialColor(val) => colorRM.state = val;
  @override
  set font(val) => fontRM.state = val;
  @override
  set padding(val) => paddingRM.state = val;
  @override
  set border(val) => borderRM.state = val;
}
