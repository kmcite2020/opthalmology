// ignore_for_file: prefer_const_constructors, unused_local_variable, prefer_const_literals_to_create_immutables

import 'package:opthalmology/features/questions/bloc.dart';
import 'package:opthalmology/features/questions/view.dart';
import 'package:opthalmology/features/test/controller.dart';
import 'package:opthalmology/shared/navigator/go_buttons/to_login.dart';
import 'package:opthalmology/shared/navigator/go_buttons/to_register.dart';
import 'package:opthalmology/shared/list_tile.dart';
import 'package:opthalmology/shared/navigator/navigator.dart';

import '../auth/bloc.dart';
import '../../shared/navigator/go_buttons/to_settings.dart';
import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../settings/controller.dart';
import '../test/view/test_screen.dart';
import '../chapters/chapters.dart';

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
          AddQuestionWidget() // TODO remove when not used
        ],
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.all(settings.padding),
                child: Text(
                  "Hello...!",
                  textScaleFactor: 5,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(settings.padding),
                child: Text(
                  "${auth.currentUser?.name}",
                  textScaleFactor: 3,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(settings.padding),
                child: Text("Total Questions ${questionBloc.numberOfQuestions} ", textScaleFactor: 2),
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
                borderRadius: BorderRadius.circular(settings.borderRadius),
              ),
              child: Column(
                children: const [
                  Text("CHAPTERS", textScaleFactor: 3),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(settings.padding),
            child: ListTile(
              onTap: () {},
              title: const Text('Select a chapter to test yourself in'),
            ),
          ),
          for (final eachChapter in Chapter.values)
            Container(
              height: 100,
              margin: EdgeInsets.all(settings.padding),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(settings.borderRadius),
                border: Border.all(),
              ),
              // padding: EdgeInsets.all(padding),
              child: ListTilePadded(
                leading: CircleAvatar(
                  child: Text(
                    eachChapter.numberOfQuestions,
                  ),
                ),
                onTap: () {
                  test.currentChapter = eachChapter;
                  navigator.toPageless(TestScreen());
                },
                subtitle: Column(
                  children: [
                    Text(eachChapter.name, textScaleFactor: 1.4),
                  ],
                ),
                trailing: IconButton(
                  onPressed: () {
                    navigator.toPageless(QuestionsView(chapter: eachChapter));
                  },
                  icon: Icon(Icons.show_chart),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
