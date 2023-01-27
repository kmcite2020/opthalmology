// ignore_for_file: unused_import

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import 'features/settings/controller.dart';
import 'shared/navigator/navigator.dart';
import 'shared/dark_theme.dart';
import 'shared/initializer_list.dart';
import 'shared/light_theme.dart';
import 'shared/licenses.dart';
import 'shared/utils.dart';
import 'firebase_options.dart';
import 'features/auth/view/register.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  GoogleFonts.config.allowRuntimeFetching = false;
  addLicenses();
  await initializeDependencies();
  runApp(
    const ProviderScope(child: MyApp()),
  );
}

class MyApp extends ReactiveStatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp.router(
        routeInformationParser: navigator.routeInformationParser,
        routerDelegate: navigator.routerDelegate,
        debugShowCheckedModeBanner: false,
        theme: lightTheme,
        darkTheme: darkTheme,
        themeMode: settings.themeMode,
      );
}
