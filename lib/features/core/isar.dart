import 'package:isar/isar.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../questions/question.dart';
import 'directory.dart';

Isar get isar => isarRM.state;

final isarRM = RM.inject(
  () => Isar.open(
    schemas: [
      QuestionSchema,
      QuizSchema,
    ],
    directory: directory.path,
    name: 'opthalmology-isar',
  ),
);
