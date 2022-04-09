// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attempt_history_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AttemptHistoryDto _$AttemptHistoryDtoFromJson(Map<String, dynamic> json) =>
    AttemptHistoryDto(
      type: json['type'] as String?,
      required: (json['required'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      properties: json['properties'] == null
          ? null
          : Properties.fromJson(json['properties'] as Map<String, dynamic>),
      title: json['title'] as String?,
    );

Map<String, dynamic> _$AttemptHistoryDtoToJson(AttemptHistoryDto instance) =>
    <String, dynamic>{
      'type': instance.type,
      'required': instance.required,
      'properties': instance.properties,
      'title': instance.title,
    };
