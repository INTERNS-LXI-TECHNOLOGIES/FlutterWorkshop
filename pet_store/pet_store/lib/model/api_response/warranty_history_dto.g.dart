// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'warranty_history_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WarrantyHistoryDto _$WarrantyHistoryDtoFromJson(Map<String, dynamic> json) =>
    WarrantyHistoryDto(
      type: json['type'] as String?,
      properties: json['properties'] == null
          ? null
          : Properties.fromJson(json['properties'] as Map<String, dynamic>),
      title: json['title'] as String?,
    );

Map<String, dynamic> _$WarrantyHistoryDtoToJson(WarrantyHistoryDto instance) =>
    <String, dynamic>{
      'type': instance.type,
      'properties': instance.properties,
      'title': instance.title,
    };
