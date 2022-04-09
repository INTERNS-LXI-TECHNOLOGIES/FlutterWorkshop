// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_executive_rating_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ServiceExecutiveRatingDto _$ServiceExecutiveRatingDtoFromJson(
        Map<String, dynamic> json) =>
    ServiceExecutiveRatingDto(
      type: json['type'] as String?,
      properties: json['properties'] == null
          ? null
          : Properties.fromJson(json['properties'] as Map<String, dynamic>),
      title: json['title'] as String?,
    );

Map<String, dynamic> _$ServiceExecutiveRatingDtoToJson(
        ServiceExecutiveRatingDto instance) =>
    <String, dynamic>{
      'type': instance.type,
      'properties': instance.properties,
      'title': instance.title,
    };
