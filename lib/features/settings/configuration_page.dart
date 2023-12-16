import 'package:colornames/colornames.dart';
import 'package:flutter/material.dart';
import 'package:opthalmology/features/core/extensions.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import 'settings.dart';

class ConfigurationPage extends ReactiveStatelessWidget {
  static String path = 'configuration';

  const ConfigurationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'Configuration'.text(),
      ),
      body: Column(
        children: [
          DropdownButtonFormField(
            value: settingsManager.settings.themeMode,
            items: ThemeMode.values
                .map(
                  (eachMode) => DropdownMenuItem(
                    value: eachMode,
                    child: eachMode.name.toUpperCase().text(),
                  ),
                )
                .toList(),
            onChanged: (themeMode) {
              settingsManager.setThemeMode(themeMode!);
            },
          ).pad(),
          DropdownButtonFormField(
            value: settingsManager.settings.materialColor,
            items: Colors.primaries
                .map(
                  (e) => DropdownMenuItem(
                    value: e,
                    child: e.colorName.toUpperCase().text(),
                  ),
                )
                .toList(),
            onChanged: (materialColor) {
              settingsManager.setMaterialColor(materialColor!);
            },
          ).pad(),
        ],
      ),
    );
  }
}
