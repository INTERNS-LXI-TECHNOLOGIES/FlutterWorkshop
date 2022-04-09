// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'extended_warranty_history_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExtendedWarrantyHistoryDto _$ExtendedWarrantyHistoryDtoFromJson(
        Map<String, dynamic> json) =>
    ExtendedWarrantyHistoryDto(
      type: json['type'] as String?,
      properties: json['properties'] == null
          ? null
          : Properties.fromJson(json['properties'] as Map<String, dynamic>),
      title: json['title'] as String?,
    );

Map<String, dynamic> _$ExtendedWarrantyHistoryDtoToJson(
        ExtendedWarrantyHistoryDto instance) =>
    <String, dynamic>{
      'type': instance.type,
      'properties': instance.properties,
      'title': instance.title,
    };
