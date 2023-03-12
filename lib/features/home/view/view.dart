// ignore_for_file: prefer_const_constructors, unused_local_variable, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:opthalmology/features/auth/presentation/view/super_user.dart';
import 'package:opthalmology/features/questions/view/questions_view.dart';
import 'package:opthalmology/shared/navigator/go_buttons/to_login.dart';
import 'package:opthalmology/shared/navigator/go_buttons/to_register.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../../shared/navigator/go_buttons/to_settings.dart';
import '../../auth/auth_bloc.dart';
import '../../chapters/view/chapter_banner_view.dart';
import '../../chapters/view/view.dart';
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
          if (!authBloc.isAuth) GotoLoginViewButton(),
          if (!authBloc.isAuth) GotoRegisterViewButton(),
          if (authBloc.isAuth) AddQuestionWidget()
        ],
      ),
      body: authBloc.isAuth
          ? ListView(
              children: [
                GreetingsView(),
                ChapterBannerView(),
                ChaptersView(),
              ],
            )
          : Column(
              children: [
                SuperUserListView(),
              ],
            ),
    );
  }
}
