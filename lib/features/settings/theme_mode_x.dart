import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class ThemeModeX extends Equatable {
  final ThemeMode themeMode;
  const ThemeModeX({
    required this.themeMode,
  });

  ThemeModeX copyWith({
    ThemeMode? themeMode,
  }) {
    return ThemeModeX(
      themeMode: themeMode ?? this.themeMode,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'themeMode': ThemeMode.values.indexOf(themeMode),
    };
  }

  factory ThemeModeX.fromMap(Map<String, dynamic> map) {
    return ThemeModeX(
      themeMode: ThemeMode.values[map['themeMode']],
    );
  }

  String toJson() => json.encode(toMap());

  factory ThemeModeX.fromJson(String source) => ThemeModeX.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [themeMode];
}
