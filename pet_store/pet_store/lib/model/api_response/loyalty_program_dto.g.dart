// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loyalty_program_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoyaltyProgramDto _$LoyaltyProgramDtoFromJson(Map<String, dynamic> json) =>
    LoyaltyProgramDto(
      type: json['type'] as String?,
      properties: json['properties'] == null
          ? null
          : Properties.fromJson(json['properties'] as Map<String, dynamic>),
      title: json['title'] as String?,
    );

Map<String, dynamic> _$LoyaltyProgramDtoToJson(LoyaltyProgramDto instance) =>
    <String, dynamic>{
      'type': instance.type,
      'properties': instance.properties,
      'title': instance.title,
    };
