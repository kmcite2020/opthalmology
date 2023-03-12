import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class MaterialColorX extends Equatable {
  final MaterialColor materialColor;
  const MaterialColorX({
    required this.materialColor,
  });

  MaterialColorX copyWith({
    MaterialColor? materialColor,
  }) {
    return MaterialColorX(
      materialColor: materialColor ?? this.materialColor,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'materialColor': Colors.primaries.indexOf(materialColor),
    };
  }

  factory MaterialColorX.fromMap(Map<String, dynamic> map) {
    return MaterialColorX(
      materialColor: Colors.primaries[map['materialColor']],
    );
  }

  String toJson() => json.encode(toMap());

  factory MaterialColorX.fromJson(String source) => MaterialColorX.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [materialColor];
}
