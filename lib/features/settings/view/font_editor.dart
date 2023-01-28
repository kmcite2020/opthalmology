import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../../shared/utils.dart';
import '../bloc.dart';

class FontEditorButton extends ReactiveStatelessWidget {
  const FontEditorButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: const Text(
            'FONTS SUPPORT',
            textScaleFactor: 1.5,
            softWrap: true,
          ),
          subtitle: const Text('CUSTOMISE YOUR FONTS'),
          trailing: Text(
            '${fonts.length}',
            // textScaleFactor: 2,
          ),
        ).pad,
        Padding(
          padding: EdgeInsets.all(settingsBloc.padding),
          child: DropdownButtonFormField<String>(
            borderRadius: BorderRadius.circular(settingsBloc.border),
            value: settingsBloc.font,
            onChanged: (val) => settingsBloc.font = val,
            items: fonts
                .map(
                  (String? eachFont) => DropdownMenuItem(
                    value: eachFont,
                    child: Text(
                      eachFont!.toUpperCase(),
                      style: GoogleFonts.getFont(eachFont),
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
