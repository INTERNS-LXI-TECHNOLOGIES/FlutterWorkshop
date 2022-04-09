// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promotional_message_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PromotionalMessageDto _$PromotionalMessageDtoFromJson(
        Map<String, dynamic> json) =>
    PromotionalMessageDto(
      type: json['type'] as String?,
      properties: json['properties'] == null
          ? null
          : Properties.fromJson(json['properties'] as Map<String, dynamic>),
      title: json['title'] as String?,
    );

Map<String, dynamic> _$PromotionalMessageDtoToJson(
        PromotionalMessageDto instance) =>
    <String, dynamic>{
      'type': instance.type,
      'properties': instance.properties,
      'title': instance.title,
    };
