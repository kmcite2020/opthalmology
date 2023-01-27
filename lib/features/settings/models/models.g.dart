// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Question _$$_QuestionFromJson(Map<String, dynamic> json) => _$_Question(
      questionName: json['questionName'] as String,
      chapter: $enumDecode(_$ChapterEnumMap, json['chapter']),
      options: (json['options'] as List<dynamic>).map((e) => e as String).toList(),
      correctOptionIndex: json['correctOptionIndex'] as int,
      explanation: json['explanation'] as String,
    );

Map<String, dynamic> _$$_QuestionToJson(_$_Question instance) => <String, dynamic>{
      'questionName': instance.questionName,
      'chapter': _$ChapterEnumMap[instance.chapter]!,
      'options': instance.options,
      'correctOptionIndex': instance.correctOptionIndex,
      'explanation': instance.explanation,
    };

const _$ChapterEnumMap = {
  Chapter.orbit: 'orbit',
  Chapter.catarct: 'catarct',
  Chapter.refraction: 'refraction',
  Chapter.cornea: 'cornea',
  Chapter.glaucoma: 'glaucoma',
  Chapter.uveitis: 'uveitis',
  Chapter.retina: 'retina',
  Chapter.neurology: 'neurology',
  Chapter.peds: 'peds',
};

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      name: json['name'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) => <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'password': instance.password,
    };
