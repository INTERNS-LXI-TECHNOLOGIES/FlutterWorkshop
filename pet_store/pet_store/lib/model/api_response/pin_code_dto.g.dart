// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pin_code_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PinCodeDto _$PinCodeDtoFromJson(Map<String, dynamic> json) => PinCodeDto(
      type: json['type'] as String?,
      properties: json['properties'] == null
          ? null
          : Properties.fromJson(json['properties'] as Map<String, dynamic>),
      title: json['title'] as String?,
    );

Map<String, dynamic> _$PinCodeDtoToJson(PinCodeDto instance) =>
    <String, dynamic>{
      'type': instance.type,
      'properties': instance.properties,
      'title': instance.title,
    };
