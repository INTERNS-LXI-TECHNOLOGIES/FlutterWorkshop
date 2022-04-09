// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'amc_history_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AmcHistoryDto _$AmcHistoryDtoFromJson(Map<String, dynamic> json) =>
    AmcHistoryDto(
      type: json['type'] as String?,
      properties: json['properties'] == null
          ? null
          : Properties.fromJson(json['properties'] as Map<String, dynamic>),
      title: json['title'] as String?,
    );

Map<String, dynamic> _$AmcHistoryDtoToJson(AmcHistoryDto instance) =>
    <String, dynamic>{
      'type': instance.type,
      'properties': instance.properties,
      'title': instance.title,
    };
