// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'question.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Option _$$_OptionFromJson(Map<String, dynamic> json) => _$_Option(
      description: json['description'] as String,
      optionType: $enumDecode(_$OptionTypeEnumMap, json['optionType']),
    );

Map<String, dynamic> _$$_OptionToJson(_$_Option instance) => <String, dynamic>{
      'description': instance.description,
      'optionType': _$OptionTypeEnumMap[instance.optionType]!,
    };

const _$OptionTypeEnumMap = {
  OptionType.a: 'a',
  OptionType.b: 'b',
  OptionType.c: 'c',
  OptionType.d: 'd',
};

_$_Question _$$_QuestionFromJson(Map<String, dynamic> json) => _$_Question(
      id: json['id'] as String,
      questionName: json['questionName'] as String,
      chapter: $enumDecode(_$ChapterEnumMap, json['chapter']),
      options: (json['options'] as List<dynamic>).map((e) => Option.fromJson(e as Map<String, dynamic>)).toList(),
      correctType: $enumDecode(_$OptionTypeEnumMap, json['correctType']),
      explaination: json['explaination'] as String,
    );

Map<String, dynamic> _$$_QuestionToJson(_$_Question instance) => <String, dynamic>{
      'id': instance.id,
      'questionName': instance.questionName,
      'chapter': _$ChapterEnumMap[instance.chapter]!,
      'options': instance.options,
      'correctType': _$OptionTypeEnumMap[instance.correctType]!,
      'explaination': instance.explaination,
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
