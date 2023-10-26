import 'dart:io';

import 'package:isar/isar.dart';
import 'package:project_opthalmology/blocs/blocs.dart';
import 'package:project_opthalmology/models/models.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'configuration_repository.dart';
part 'questions_repository.dart';
part 'repositories.g.dart';

late final Directory documentsDirectory;

final isar = Isar.open(
  schemas: [
    QuestionSchema,
    ConfigurationSchema,
  ],
  directory: documentsDirectory.path,
);
