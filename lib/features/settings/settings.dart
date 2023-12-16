import 'dart:convert';

import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

part 'settings.g.dart';

@JsonSerializable()
@CopyWith()
class Settings {
  @MaterialColorConverter()
  final MaterialColor materialColor;
  final ThemeMode themeMode;
  const Settings({
    this.materialColor = Colors.amber,
    this.themeMode = ThemeMode.system,
  });

  Map<String, dynamic> toJson() => _$SettingsToJson(this);
  static Settings fromJson(Map<String, dynamic> json) =>
      _$SettingsFromJson(json);
}

final settingsManager = SettingsManager();

class SettingsManager {
  final settingsRM = RM.inject(
    () => Settings(),
    persist: () => PersistState(
      key: 'settings',
      toJson: (s) => jsonEncode(s),
      fromJson: (json) => Settings.fromJson(jsonDecode(json)),
    ),
  );
  Settings get settings => settingsRM.state;

  void setSettings(Settings settings) => settingsRM.state = settings;

  void setThemeMode(ThemeMode themeMode) =>
      setSettings(settings.copyWith(themeMode: themeMode));

  void setMaterialColor(MaterialColor materialColor) =>
      setSettings(settings.copyWith(materialColor: materialColor));
}

class MaterialColorConverter implements JsonConverter<MaterialColor, int> {
  const MaterialColorConverter();
  @override
  MaterialColor fromJson(int json) => Colors.primaries[json];

  @override
  int toJson(MaterialColor object) => Colors.primaries.indexOf(object);
}
