import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../bloc.dart';

class RoundedCornersEditor extends ReactiveStatelessWidget {
  const RoundedCornersEditor({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          child: ListTile(
            title: const Text(
              'ROUNDED CORNERS',
              textScaleFactor: 1.5,
              softWrap: true,
            ),
            subtitle: const Text('CUSTOMISE ROUNDED CORNERS'),
            trailing: Text(
              '${settingsBloc.border.toInt()}',
              // textScaleFactor: 2,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(settingsBloc.padding),
          child: Slider(
            label: settingsBloc.border.toInt().toString(),
            // divisions: 20,
            min: 0,
            max: 30,
            value: settingsBloc.border,
            onChanged: (val) => settingsBloc.border = val,
          ),
        ),
      ],
    );
  }
}
