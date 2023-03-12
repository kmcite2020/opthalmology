import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../settings_bloc.dart';

class PaddingEditorView extends ReactiveStatelessWidget {
  const PaddingEditorView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          child: ListTile(
            title: const Text(
              'PADDING',
              textScaleFactor: 1.5,
              softWrap: true,
            ),
            subtitle: const Text('CUSTOMISE PADDING'),
            trailing: Text(
              '${settingsBloc.padding.toInt()}',
              // textScaleFactor: 2,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(settingsBloc.padding),
          child: Slider(
            label: settingsBloc.padding.toInt().toString(),
            min: 0,
            max: 25,
            // divisions: 10,
            value: settingsBloc.padding,
            onChanged: (val) => settingsBloc.padding = val,
          ),
        ),
      ],
    );
  }
}
