import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:opthalmology/features/settings/bloc.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:uuid/uuid.dart';

List<MaterialColor> get colors => Colors.primaries;
List<ThemeMode> get themeModes => ThemeMode.values;
List<String> get fonts {
  return [
    "Azeret Mono",
    "Comfortaa",
    "DM Mono",
    "Dosis",
    "Fira Sans",
    "IBM Plex Mono",
    "Josefin Sans",
    "Montserrat",
    "Space Mono",
    "Ubuntu",
  ];
}

String get randomID => const Uuid().v4();

void snackBar(String text) => RM.scaffold.showSnackBar(SnackBar(content: Text(text), duration: 2.seconds));

Widget buildLoader() => const Scaffold(
      body: Center(
        child: SizedBox(
          height: 120,
          width: 120,
          child: CircularProgressIndicator(),
        ),
      ),
    );
Widget buildError(Object e, WidgetRef ref) => Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                e.toString(),
                textScaleFactor: 1.5,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  // ref.read(authenticationProvider.notifier).signOut();
                },
                child: const Text(
                  'Try again',
                ),
              ),
            ),
          ],
        ),
      ),
    );

extension PaddingX on Widget {
  Widget get pad => Padding(padding: EdgeInsets.all(settingsBloc.padding), child: this);
}
