import 'package:flutter/material.dart';
import 'package:opthalmology/features/questions/view/questions_manager_view.dart';
import 'package:opthalmology/shared/utils.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../settings/settings_bloc.dart';

class ChapterBannerView extends ReactiveStatelessWidget {
  const ChapterBannerView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onLongPress: () {
            RM.navigate.to(const QestionManagerView());
          },
          borderRadius: BorderRadius.circular(settingsBloc.border),
          child: Column(
            children: const [
              Text("CHAPTERS", textScaleFactor: 3),
            ],
          ).pad,
        ).pad,
        ListTile(
          onTap: () {},
          title: const Text('Select a chapter to test yourself in'),
        ).pad,
      ],
    );
  }
}
