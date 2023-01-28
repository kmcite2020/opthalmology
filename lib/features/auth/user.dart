import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    required String name,
    required String email,
    required String password,
  }) = _User;
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  static List<User> fromListJson(String source) {
    final List result = jsonDecode(source) as List;
    return result.map((e) => User.fromJson(e)).toList();
  }

  static String toListJson(List<User> questions) {
    final List result = questions.map((eachQuestion) => eachQuestion.toJson()).toList();
    return jsonEncode(result);
  }
}
