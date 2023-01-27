import 'package:colornames/colornames.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../shared/list_tile.dart';
import 'package:states_rebuilder/scr/state_management/state_management.dart';

import '../../shared/utils.dart';
import 'controller.dart';

class SettingsPage extends ReactiveStatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () {
                  // ref.read(appWidgetProvider.notifier).openHome();
                  // ref.read(authenticationProvider.notifier).signOut();
                },
                child: const Text('SignOut')),
          ),
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
            padding: EdgeInsets.all(settings.padding),
            child: DropdownButtonFormField<ThemeMode>(
              borderRadius: BorderRadius.circular(settings.borderRadius),
              value: settings.themeMode,
              onChanged: (val) => settings.themeMode = val,
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
            padding: EdgeInsets.all(settings.padding),
            child: DropdownButtonFormField<MaterialColor>(
              icon: const SizedBox(),
              borderRadius: BorderRadius.circular(settings.borderRadius),
              value: settings.color,
              onChanged: (val) => settings.color = val,
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
                        padding: EdgeInsets.all(settings.padding),
                        margin: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          color: eachColor,
                          borderRadius: BorderRadius.circular(settings.borderRadius),
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
          Card(
            child: ListTile(
              title: const Text(
                'PADDING',
                textScaleFactor: 1.5,
                softWrap: true,
              ),
              subtitle: const Text('CUSTOMISE PADDING'),
              trailing: Text(
                '${settings.padding.toInt()}',
                // textScaleFactor: 2,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(settings.padding),
            child: Slider(
              label: settings.padding.toInt().toString(),
              min: 0,
              max: 25,
              // divisions: 10,
              value: settings.padding,
              onChanged: (val) => settings.padding = val,
            ),
          ),
          Card(
            child: ListTile(
              title: const Text(
                'ROUNDED CORNERS',
                textScaleFactor: 1.5,
                softWrap: true,
              ),
              subtitle: const Text('CUSTOMISE ROUNDED CORNERS'),
              trailing: Text(
                '${settings.borderRadius.toInt()}',
                // textScaleFactor: 2,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(settings.padding),
            child: Slider(
              label: settings.borderRadius.toInt().toString(),
              // divisions: 20,
              min: 0,
              max: 30,
              value: settings.borderRadius,
              onChanged: (val) => settings.border = val,
            ),
          ),
          ListTilePadded(
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
          ),
          Padding(
            padding: EdgeInsets.all(settings.padding),
            child: DropdownButtonFormField<String>(
              borderRadius: BorderRadius.circular(settings.borderRadius),
              value: settings.fontRM.state,
              onChanged: (val) => settings.font = val,
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
      ),
    );
  }
}
