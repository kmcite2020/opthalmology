import 'dart:io';

import 'package:isar/isar.dart';
import 'package:project_opthalmology/presentation/ui/ui.dart';

import '../models/models.dart';

part 'questions_repository.dart';

late final Directory documentsDirectory;

final isar = Isar.openSync(
  [
    QuestionSchema,
    QuizSchema,
  ],
  directory: documentsDirectory.path,
  name: 'opthalmology',
);
