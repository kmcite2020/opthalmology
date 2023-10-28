import 'package:colornames/colornames.dart';
import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:project_opthalmology/domain/repositories/repositories.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../domain/models/models.dart';
import '../blocs/blocs.dart';
import '../blocs/configuration_bloc.dart';
import '../themes_provider.dart';
import 'home_page/home_page_action_widget.dart';
import 'quizzes/quizzes_page.dart';

part 'app.dart';
part 'configuration_page.dart';
part 'navigator.dart';
part 'home_page/home_page.dart';
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
