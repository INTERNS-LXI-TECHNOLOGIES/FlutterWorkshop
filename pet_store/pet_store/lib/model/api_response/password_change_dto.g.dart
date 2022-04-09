// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'password_change_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PasswordChangeDto _$PasswordChangeDtoFromJson(Map<String, dynamic> json) =>
    PasswordChangeDto(
      type: json['type'] as String?,
      properties: json['properties'] == null
          ? null
          : Properties.fromJson(json['properties'] as Map<String, dynamic>),
      title: json['title'] as String?,
    );

Map<String, dynamic> _$PasswordChangeDtoToJson(PasswordChangeDto instance) =>
    <String, dynamic>{
      'type': instance.type,
      'properties': instance.properties,
      'title': instance.title,
    };
