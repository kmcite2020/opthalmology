import 'package:colornames/colornames.dart';
import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../../shared/utils.dart';
import '../settings_bloc.dart';

class ColorEditorView extends ReactiveStatelessWidget {
  const ColorEditorView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Card(
          child: ListTile(
            title: Text(
              'BACKGROUND COLORS',
              textScaleFactor: 1.5,
            ),
            subtitle: Text('CUSTOMISE YOUR BACKGROUND COLOR'),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(settingsBloc.padding),
          child: DropdownButtonFormField<MaterialColor>(
            icon: const SizedBox(),
            borderRadius: BorderRadius.circular(settingsBloc.border),
            value: settingsBloc.color,
            onChanged: (val) => settingsBloc.color = val,
            selectedItemBuilder: (context) => colors
                .map(
                  (e) => Text(e.colorName.toUpperCase()),
                )
                .toList(),
            items: colors
                .map(
                  (MaterialColor eachColor) => DropdownMenuItem(
                    value: eachColor,
                    child: Container(
                      width: 200,
                      padding: EdgeInsets.all(settingsBloc.padding),
                      margin: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        color: eachColor,
                        borderRadius: BorderRadius.circular(settingsBloc.border),
                        border: const Border.symmetric(),
                      ),
                      child: Text(
                        eachColor.colorName.toUpperCase(),
                        // style: TextStyle(color: eachColor),
                      ),
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
