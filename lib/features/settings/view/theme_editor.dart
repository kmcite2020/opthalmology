import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../../shared/utils.dart';
import '../settings_bloc.dart';

class ThemeModeEditorView extends ReactiveStatelessWidget {
  const ThemeModeEditorView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Card(
          child: ListTile(
            title: Text(
              'THEME MODE',
              textScaleFactor: 1.5,
            ),
            subtitle: Text('CUSTOMISE YOUR THEME MODE'),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(settingsBloc.padding),
          child: DropdownButtonFormField<ThemeMode>(
            borderRadius: BorderRadius.circular(settingsBloc.border),
            value: settingsBloc.themeMode,
            onChanged: (val) => settingsBloc.themeMode = val,
            items: themeModes
                .map(
                  (ThemeMode eachThemeMode) => DropdownMenuItem(
                    value: eachThemeMode,
                    child: Text(
                      eachThemeMode.name.toUpperCase(),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }
}
