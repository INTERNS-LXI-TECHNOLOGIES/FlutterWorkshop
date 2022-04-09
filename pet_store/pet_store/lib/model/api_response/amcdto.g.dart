// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'amcdto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Amcdto _$AmcdtoFromJson(Map<String, dynamic> json) => Amcdto(
      type: json['type'] as String?,
      required: (json['required'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      properties: json['properties'] == null
          ? null
          : Properties.fromJson(json['properties'] as Map<String, dynamic>),
      title: json['title'] as String?,
    );

Map<String, dynamic> _$AmcdtoToJson(Amcdto instance) => <String, dynamic>{
      'type': instance.type,
      'required': instance.required,
      'properties': instance.properties,
      'title': instance.title,
    };
