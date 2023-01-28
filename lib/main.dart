// ignore_for_file: unused_import, prefer_const_constructors

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:opthalmology/features/auth/view/login_view.dart';
import 'package:opthalmology/features/home/view/view.dart';
import 'package:opthalmology/features/questions/view/questions_manager_view.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import 'features/auth/interface.dart';
import 'features/auth/view/register_view.dart';
import 'features/settings/bloc.dart';
import 'firebase_options.dart';
import 'shared/dark_theme.dart';
import 'shared/initializer_list.dart';
import 'shared/licenses.dart';
import 'shared/light_theme.dart';
import 'shared/utils.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  GoogleFonts.config.allowRuntimeFetching = false;
  addLicenses();
  await initializeDependencies();
  runApp(
    MyApp(),
  );
}

class MyApp extends ReactiveStatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp(
        // routeInformationParser: navigator.routeInformationParser,
        // routerDelegate: navigator.routerDelegate,
        navigatorKey: RM.navigate.navigatorKey,
        debugShowCheckedModeBanner: false,
        theme: lightTheme,
        darkTheme: darkTheme,
        themeMode: settingsBloc.themeMode,
        home: auth.isAuthenticated ? QestionManagerView() : LoginView(),
      );
}
