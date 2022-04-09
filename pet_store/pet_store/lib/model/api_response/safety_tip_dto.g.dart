// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'safety_tip_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SafetyTipDto _$SafetyTipDtoFromJson(Map<String, dynamic> json) => SafetyTipDto(
      type: json['type'] as String?,
      properties: json['properties'] == null
          ? null
          : Properties.fromJson(json['properties'] as Map<String, dynamic>),
      title: json['title'] as String?,
    );

Map<String, dynamic> _$SafetyTipDtoToJson(SafetyTipDto instance) =>
    <String, dynamic>{
      'type': instance.type,
      'properties': instance.properties,
      'title': instance.title,
    };
