import 'package:flutter/material.dart';
import 'package:opthalmology/features/settings/material_color_x.dart';
import 'package:opthalmology/features/settings/settings_model.dart';
import 'package:opthalmology/features/settings/theme_mode_x.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

class SettingsBloc {
  late final settingsRM = RM.inject<SettingsModel>(
    () => SettingsModel.init,
    persist: () => PersistState(
      key: 'SETTINGS_MODEL',
      toJson: (s) => s.toJson(),
      fromJson: (json) => SettingsModel.fromJson(json),
    ),
  );

  SettingsModel get settings => settingsRM.state;
  set settings(SettingsModel value) => settingsRM.state = value;

  ThemeMode get themeMode => settings.themeModeCapsule.themeMode;
  MaterialColor get color => settings.colorCapsule.materialColor;
  String? get font => settings.font; //GoogleFonts.getFont(fontRM.state).fontFamily
  double get padding => settings.padding;
  double get border => settings.border;
  double get appBarHeight => 80;
  set themeMode(val) => settings = settings.copyWith(themeModeCapsule: ThemeModeX(themeMode: val));
  set color(val) => settings = settings.copyWith(colorCapsule: MaterialColorX(materialColor: val));
  set font(val) => settings = settings.copyWith(font: val);
  set padding(val) => settings = settings.copyWith(padding: val);
  set border(val) => settings = settings.copyWith(border: val);
}

final settingsBloc = SettingsBloc();
