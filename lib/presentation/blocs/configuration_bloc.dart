import 'package:flutter/material.dart';
import 'package:project_opthalmology/main.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../domain/models/models.dart';

final configurationBloc = ConfigurationBloc();

class ConfigurationBloc {
  final configurationRM = RM.inject(
    () => Configuration(),
    persist: () => PersistState(
      key: 'Configurations',
      fromJson: Configuration.fromJson,
      toJson: toJson,
    ),
  );

  Configuration get configuration => configurationRM.state;
  void setConfiguration(Configuration configuration) {
    configurationRM.setState(
      (s) {
        s = configuration;
        return null;
      },
    );
  }

  void setThemeMode(ThemeMode themeMode) => setConfiguration(configuration..themeMode = themeMode);
  void setMaterialColor(MaterialColor materialColor) => setConfiguration(configuration..materialColor = materialColor);
}
