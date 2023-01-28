import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../settings/bloc.dart';

class ChapterBannerView extends ReactiveStatelessWidget {
  const ChapterBannerView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            // height: 200,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(settingsBloc.border),
            ),
            child: Column(
              children: const [
                Text("CHAPTERS", textScaleFactor: 3),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(settingsBloc.padding),
          child: ListTile(
            onTap: () {},
            title: const Text('Select a chapter to test yourself in'),
          ),
        ),
      ],
    );
  }
}
