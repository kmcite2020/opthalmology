// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'package:colornames/colornames.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:opthalmology/features/questions/bloc.dart';
import 'package:opthalmology/features/settings/view/theme_editor.dart';
import 'package:states_rebuilder/scr/state_management/state_management.dart';

import '../../../shared/utils.dart';
import '../../auth/auth_bloc.dart';
import '../../auth/login_bloc.dart';
import '../../auth/presentation/view/logout_button_view.dart';
import '../../questions/view/delete_all_question_button.dart';
import '../settings_bloc.dart';
import 'color_editor.dart';
import 'font_editor.dart';
import 'padding.dart';
import 'rounded_corner.dart';

class SettingsPage extends ReactiveStatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        automaticallyImplyLeading: false,
        actions: const [BackButton()],
      ),
      body: ListView(
        children: [
          if (authBloc.isAuth) LogoutButtonView(),
          ThemeModeEditorView(),
          ColorEditorView(),
          if (authBloc.isAuth) PaddingEditorView(),
          if (authBloc.isAuth) RoundedCornersEditor(),
          if (authBloc.isAuth) FontEditorButton(),
          if (authBloc.isAuth) DeleteAllQuestionsButton()
        ],
      ),
    );
  }
}
