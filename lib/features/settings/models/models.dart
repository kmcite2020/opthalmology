import 'package:freezed_annotation/freezed_annotation.dart';

import '../../home/controller.dart';

part 'models.freezed.dart';
part 'models.g.dart';

@freezed
class Question with _$Question {
  factory Question({
    required String questionName,
    required Chapter chapter,
    required List<String> options,
    required int correctOptionIndex,
    required String explanation,
  }) = _Question;
  factory Question.fromJson(Map<String, dynamic> json) => _$QuestionFromJson(json);
}

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required String name,
    required String email,
    required String password,
  }) = _UserModel;
  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}
