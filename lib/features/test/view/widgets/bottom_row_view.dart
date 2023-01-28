import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../../settings/bloc.dart';

class BottomRowWidget extends ReactiveStatelessWidget {
  const BottomRowWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(settingsBloc.padding),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(
                    70,
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  '<',
                  textScaleFactor: 1.4,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(
                    70,
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  'Submit Answer',
                  textScaleFactor: 1.4,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(
                    70,
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  '>',
                  textScaleFactor: 1.4,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
