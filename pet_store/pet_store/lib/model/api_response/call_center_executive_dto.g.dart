// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'call_center_executive_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CallCenterExecutiveDto _$CallCenterExecutiveDtoFromJson(
        Map<String, dynamic> json) =>
    CallCenterExecutiveDto(
      type: json['type'] as String?,
      required: (json['required'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      properties: json['properties'] == null
          ? null
          : Properties.fromJson(json['properties'] as Map<String, dynamic>),
      title: json['title'] as String?,
    );

Map<String, dynamic> _$CallCenterExecutiveDtoToJson(
        CallCenterExecutiveDto instance) =>
    <String, dynamic>{
      'type': instance.type,
      'required': instance.required,
      'properties': instance.properties,
      'title': instance.title,
    };
