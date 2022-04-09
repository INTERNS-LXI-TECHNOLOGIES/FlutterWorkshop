// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_executive_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ServiceExecutiveDto _$ServiceExecutiveDtoFromJson(Map<String, dynamic> json) =>
    ServiceExecutiveDto(
      type: json['type'] as String?,
      required: (json['required'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      properties: json['properties'] == null
          ? null
          : Properties.fromJson(json['properties'] as Map<String, dynamic>),
      title: json['title'] as String?,
    );

Map<String, dynamic> _$ServiceExecutiveDtoToJson(
        ServiceExecutiveDto instance) =>
    <String, dynamic>{
      'type': instance.type,
      'required': instance.required,
      'properties': instance.properties,
      'title': instance.title,
    };
