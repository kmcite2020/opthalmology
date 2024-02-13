import 'package:opthalmology/main.dart';
export 'package:opthalmology/features/quizzes/quiz.dart';

export 'package:opthalmology/main.dart';
export 'package:colornames/colornames.dart';
export 'package:flex_color_scheme/flex_color_scheme.dart';
export 'package:flutter/material.dart';
export 'package:freezed_annotation/freezed_annotation.dart';
export 'package:hive_flutter/hive_flutter.dart';
export 'package:opthalmology/features/app.dart';
export 'package:opthalmology/features/core/extensions.dart';
export 'package:opthalmology/features/core/hive_storage.dart';
export 'package:opthalmology/features/core/navigator.dart';
export 'package:opthalmology/features/home/home_page.dart';
export 'package:opthalmology/features/home/home_page_action_widget.dart';
export 'package:opthalmology/features/questions/questions_page.dart';
export 'package:opthalmology/features/quizzes/quizzes_page.dart';
export 'package:opthalmology/features/settings/configuration_page.dart';
export 'package:opthalmology/features/settings/settings.dart';
export 'package:opthalmology/features/settings/themes.dart';
export 'package:states_rebuilder/states_rebuilder.dart';
export 'package:uuid/uuid.dart';
export 'package:opthalmology/features/questions/question.dart';
export 'package:opthalmology/features/questions/questions_bloc.dart';

typedef UI = ReactiveStatelessWidget;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await RM.storageInitializer(HiveStorage());
  // await RM.deleteAllPersistState();
  runApp(
    App(),
  );
}
