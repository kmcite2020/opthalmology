// ignore_for_file: prefer_const_constructors, unused_local_variable, prefer_const_literals_to_create_immutables

import 'package:opthalmology/features/test/controller.dart';
import 'package:opthalmology/shared/navigator/go_buttons/to_login.dart';
import 'package:opthalmology/shared/navigator/go_buttons/to_register.dart';
import 'package:opthalmology/shared/list_tile.dart';
import 'package:opthalmology/shared/navigator/navigator.dart';

import '../auth/bloc.dart';
import '../../shared/navigator/go_buttons/to_settings.dart';
import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../test/test_screen.dart';
import 'chapters.dart';

class MyHomePage extends ReactiveStatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Opthalmology",
        ),
        actions: [
          GotoSettingsPageButton(),
          GotoLoginViewButton(),
          GotoRegisterViewButton(),
        ],
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Hello, ${auth.currentUser?.name}",
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Total Questions {ref.watch(getQuestionsProvider).length}", textScaleFactor: .95),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Container(
              // height: 200,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                children: const [
                  Text("CHAPTERS", textScaleFactor: 3),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              onTap: () {},
              title: const Text('Select a chapter to test yourself in'),
            ),
          ),
          for (final eachChapter in Chapter.values)
            Container(
              height: 100,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), border: Border.all()),
              // padding: EdgeInsets.all(padding),
              child: ListTilePadded(
                // borderRadius: BorderRadius.circular(borderRadius),
                onTap: () {
                  test.currentChapter = eachChapter;
                  navigator.toPageless(TestScreen());
                },
                subtitle: Column(
                  children: [
                    Text(eachChapter.name, textScaleFactor: 1.4),
                    Text("$eachChapter", textScaleFactor: 1.5),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
