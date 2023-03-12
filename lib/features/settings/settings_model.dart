// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import 'locale_x.dart';
import 'material_color_x.dart';
import 'theme_mode_x.dart';

class SettingsModel extends Equatable {
  final ThemeModeX themeModeCapsule;
  final MaterialColorX colorCapsule;
  final String font;
  final double padding;
  final double border;
  final LocaleX localeCapsule;
  const SettingsModel({
    required this.themeModeCapsule,
    required this.colorCapsule,
    required this.font,
    required this.padding,
    required this.border,
    required this.localeCapsule,
  });

  static SettingsModel init = const SettingsModel(
    themeModeCapsule: ThemeModeX(themeMode: ThemeMode.system),
    colorCapsule: MaterialColorX(materialColor: Colors.cyan),
    font: 'Dosis',
    padding: 8,
    border: 8,
    localeCapsule: LocaleX(locale: Locale('en')),
  );

  SettingsModel copyWith({
    ThemeModeX? themeModeCapsule,
    MaterialColorX? colorCapsule,
    String? font,
    double? padding,
    double? border,
    LocaleX? localeCapsule,
  }) {
    return SettingsModel(
      themeModeCapsule: themeModeCapsule ?? this.themeModeCapsule,
      colorCapsule: colorCapsule ?? this.colorCapsule,
      font: font ?? this.font,
      padding: padding ?? this.padding,
      border: border ?? this.border,
      localeCapsule: localeCapsule ?? this.localeCapsule,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'themeModeCapsule': themeModeCapsule.toMap(),
      'colorCapsule': colorCapsule.toMap(),
      'font': font,
      'padding': padding,
      'border': border,
      'localeCapsule': localeCapsule.toMap(),
    };
  }

  factory SettingsModel.fromMap(Map<String, dynamic> map) {
    return SettingsModel(
      themeModeCapsule: ThemeModeX.fromMap(map['themeModeCapsule'] as Map<String, dynamic>),
      colorCapsule: MaterialColorX.fromMap(map['colorCapsule'] as Map<String, dynamic>),
      font: map['font'] as String,
      padding: map['padding'] as double,
      border: map['border'] as double,
      localeCapsule: LocaleX.fromMap(map['localeCapsule'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory SettingsModel.fromJson(String source) => SettingsModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props {
    return [
      themeModeCapsule,
      colorCapsule,
      font,
      padding,
      border,
      localeCapsule,
    ];
  }
}
