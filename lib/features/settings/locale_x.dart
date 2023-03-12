import 'dart:convert';
import 'dart:ui';

import 'package:equatable/equatable.dart';

class LocaleX extends Equatable {
  final Locale locale;
  const LocaleX({
    required this.locale,
  });

  LocaleX copyWith({
    Locale? locale,
  }) {
    return LocaleX(
      locale: locale ?? this.locale,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'locale': locale.languageCode,
    };
  }

  factory LocaleX.fromMap(Map<String, dynamic> map) {
    return LocaleX(
      locale: Locale(map['locale']),
    );
  }

  String toJson() => json.encode(toMap());

  factory LocaleX.fromJson(String source) => LocaleX.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [locale];
}
