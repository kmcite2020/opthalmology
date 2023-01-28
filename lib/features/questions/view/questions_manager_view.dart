// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:opthalmology/features/chapters/chapters_enum.dart';
import 'package:opthalmology/features/questions/bloc.dart';
import 'package:opthalmology/features/questions/models/question.dart';
import 'package:opthalmology/shared/navigator/go_buttons/to_settings.dart';
import 'package:opthalmology/shared/utils.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

class QestionManagerView extends StatelessWidget {
  const QestionManagerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Question'),
        centerTitle: true,
        automaticallyImplyLeading: false,
        actions: [
          const GotoHomePageButton(),
        ],
      ),
      body: OnFormBuilder(
        listenTo: questionBloc.addQuestionForm,
        builder: () => ListView(
          children: [
            TextField(
              controller: questionBloc.question.controller,
              focusNode: questionBloc.question.focusNode,
              decoration: InputDecoration(
                errorText: questionBloc.question.error,
                labelText: 'Question',
              ),
            ).pad,
            TextField(
              controller: questionBloc.a.controller,
              focusNode: questionBloc.a.focusNode,
              decoration: InputDecoration(
                errorText: questionBloc.a.error,
                labelText: 'Option A',
              ),
            ).pad,
            TextField(
              controller: questionBloc.b.controller,
              focusNode: questionBloc.b.focusNode,
              decoration: InputDecoration(
                errorText: questionBloc.b.error,
                labelText: 'Option B',
              ),
            ).pad,
            TextField(
              controller: questionBloc.c.controller,
              focusNode: questionBloc.c.focusNode,
              decoration: InputDecoration(
                errorText: questionBloc.c.error,
                labelText: 'Option C',
              ),
            ).pad,
            TextField(
              controller: questionBloc.d.controller,
              focusNode: questionBloc.d.focusNode,
              decoration: InputDecoration(
                errorText: questionBloc.d.error,
                labelText: 'Option D',
              ),
            ).pad,
            TextField(
              controller: questionBloc.explaination.controller,
              focusNode: questionBloc.explaination.focusNode,
              decoration: InputDecoration(
                errorText: questionBloc.explaination.error,
                labelText: 'Explaination',
              ),
            ).pad,
            OnFormFieldBuilder(
              listenTo: questionBloc.correct,
              builder: (value, onChanged) => DropdownButtonFormField(
                value: value,
                items: OptionType.values
                    .map(
                      (e) => DropdownMenuItem(
                        value: e,
                        child: Text(e.name.toUpperCase()),
                      ),
                    )
                    .toList(),
                onChanged: onChanged,
              ),
            ).pad,
            OnFormFieldBuilder(
              listenTo: questionBloc.chapter,
              builder: (value, onChanged) => DropdownButtonFormField(
                value: value,
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
            ).pad,
            OnFormSubmissionBuilder(
              listenTo: questionBloc.addQuestionForm,
              onSubmitting: () => const CircularProgressIndicator(),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(
                    60,
                  ),
                ),
                onPressed: questionBloc.addQuestionForm.isValid ? () => questionBloc.addQuestionForm.submit() : null,
                child: const Text(
                  'Save Question',
                ),
              ),
            ).pad
          ],
        ),
      ),
    );
  }
}
