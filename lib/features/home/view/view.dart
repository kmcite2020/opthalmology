// ignore_for_file: prefer_const_constructors, unused_local_variable, prefer_const_literals_to_create_immutables

import 'package:opthalmology/features/questions/view/questions_view.dart';
import 'package:opthalmology/shared/navigator/go_buttons/to_login.dart';
import 'package:opthalmology/shared/navigator/go_buttons/to_register.dart';
import 'package:opthalmology/shared/utils.dart';

import '../../../shared/navigator/go_buttons/to_settings.dart';
import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../auth/interface.dart';
import '../../chapters/view/view.dart';
import '../../chapters/view/chapter_banner_view.dart';
import 'greetings_view.dart';

class HomeView extends ReactiveStatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Opthalmology",
        ),
        automaticallyImplyLeading: false,
        actions: [
          GotoSettingsPageButton(),
          if (!auth.isAuthenticated) GotoLoginViewButton(),
          if (!auth.isAuthenticated) GotoRegisterViewButton(),
          if (auth.isAuthenticated) AddQuestionWidget()
        ],
      ),
      body: auth.isAuthenticated
          ? ListView(
              children: [GreetingsView(), ChapterBannerView(), ChaptersView()] // auth
              ,
            )
          : Center(child: Text("you are not signed in", textScaleFactor: 2).pad),
    );
  }
}
