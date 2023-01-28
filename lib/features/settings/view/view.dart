// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:colornames/colornames.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:opthalmology/features/auth/bloc.dart';
import 'package:opthalmology/features/questions/bloc.dart';
import 'package:opthalmology/features/settings/view/theme_editor.dart';
import '../../../shared/list_tile.dart';
import 'package:states_rebuilder/scr/state_management/state_management.dart';

import '../../../shared/utils.dart';
import '../bloc.dart';
import 'color_editor.dart';
import '../../questions/view/delete_all_question_button.dart';
import 'font_editor.dart';
import '../../auth/view/logout_button_view.dart';
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
          if (auth.isAuthenticated) LogoutButtonView(),
          ThemeModeEditorView(),
          ColorEditorView(),
          if (auth.isAuthenticated) PaddingEditorView(),
          if (auth.isAuthenticated) RoundedCornersEditor(),
          if (auth.isAuthenticated) FontEditorButton(),
          if (auth.isAuthenticated) DeleteAllQuestionsButton()
        ],
      ),
    );
  }
}
