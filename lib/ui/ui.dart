import 'package:colornames/colornames.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:isar/isar.dart';
import 'package:project_opthalmology/blocs/blocs.dart';
import 'package:project_opthalmology/repositories/repositories.dart';
import 'package:project_opthalmology/services/services.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../models/models.dart';

part 'app.dart';
part 'configuration_page.dart';
part 'go_router.dart';
part 'home_page.dart';
part 'questions_page.dart';
part 'quizzes/quiz.dart';
part 'ui.g.dart';

extension ObjectExtensions on Object? {
  Widget text({
    TextStyle? style,
    double? textScaleFactor,
  }) =>
      Text(
        toString(),
        style: style,
        textScaleFactor: textScaleFactor,
      );
}

extension WidgetExtensions on Widget {
  Widget pad({
    EdgeInsetsGeometry? padding,
  }) =>
      Padding(
        padding: padding ?? const EdgeInsets.all(8),
        child: this,
      );
  Widget center() => Center(child: this);
}
