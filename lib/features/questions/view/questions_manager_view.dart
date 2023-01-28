// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:opthalmology/features/chapters/chapters_enum.dart';
import 'package:opthalmology/features/questions/bloc.dart';
import 'package:opthalmology/features/questions/models/question.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

class QestionManagerView extends StatelessWidget {
  const QestionManagerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: OnFormBuilder(
        listenTo: qmb.addQuestionForm,
        builder: () => ListView(
          children: [
            TextField(
              controller: qmb.question.controller,
              focusNode: qmb.question.focusNode,
              decoration: InputDecoration(
                errorText: qmb.question.error,
              ),
            ),
            TextField(
              controller: qmb.a.controller,
              focusNode: qmb.a.focusNode,
              decoration: InputDecoration(
                errorText: qmb.a.error,
              ),
            ),
            TextField(
              controller: qmb.b.controller,
              focusNode: qmb.b.focusNode,
              decoration: InputDecoration(
                errorText: qmb.b.error,
              ),
            ),
            TextField(
              controller: qmb.c.controller,
              focusNode: qmb.c.focusNode,
              decoration: InputDecoration(
                errorText: qmb.c.error,
              ),
            ),
            TextField(
              controller: qmb.d.controller,
              focusNode: qmb.d.focusNode,
              decoration: InputDecoration(
                errorText: qmb.d.error,
              ),
            ),
            OnFormFieldBuilder(
              listenTo: qmb.correct,
              builder: (value, onChanged) => DropdownButtonFormField(
                items: OptionType.values
                    .map(
                      (e) => DropdownMenuItem(
                        value: e,
                        child: Text(e.name),
                      ),
                    )
                    .toList(),
                onChanged: onChanged,
              ),
            ),
            OnFormFieldBuilder(
              listenTo: qmb.chapter,
              builder: (value, onChanged) => DropdownButtonFormField(
                items: Chapter.values
                    .map(
                      (e) => DropdownMenuItem(
                        value: e,
                        child: Text(e.name),
                      ),
                    )
                    .toList(),
                onChanged: onChanged,
              ),
            ),
            OnFormSubmissionBuilder(
              listenTo: qmb.addQuestionForm,
              onSubmitting: () => const CircularProgressIndicator(),
              child: const Text(
                'Save Question',
              ),
            )
          ],
        ),
      ),
    );
  }
}
