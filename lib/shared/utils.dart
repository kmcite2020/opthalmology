import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:opthalmology/features/settings/settings_bloc.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:uuid/uuid.dart';

extension PrintX on Object? {
  void get p => print(this);
}

class Ticker {
  const Ticker();

  Stream<int> tick({required int ticks}) => Stream.periodic(const Duration(seconds: 1), (x) => ticks - x - 1).take(ticks);
}

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

// ignore: prefer_const_constructors
String get randomID => Uuid().v4();

void snackBar(String content) => RM.scaffold.showSnackBar(SnackBar(content: Text(content), duration: 2.seconds));
BuildContext get contextRM => RM.context!;
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

extension BorderedContainerX on Widget {
  Widget get borderedPad => Container(
        margin: EdgeInsets.all(settingsBloc.padding / 2),
        padding: EdgeInsets.all(settingsBloc.padding / 2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(settingsBloc.border),
          border: Border.all(),
        ),
        child: this,
      );
}

///variables
///constants
///classes
///functions
///objects
///operators
/// String
/// int
/// double
/// bool
/// num
/// Map {key:value}
/// List ['sdnsdsjdn'];
/// Set {'hjdhasd'}
/// enum
/// constructors
/// abstract classes
