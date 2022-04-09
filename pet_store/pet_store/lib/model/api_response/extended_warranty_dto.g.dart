// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'extended_warranty_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExtendedWarrantyDto _$ExtendedWarrantyDtoFromJson(Map<String, dynamic> json) =>
    ExtendedWarrantyDto(
      type: json['type'] as String?,
      required: (json['required'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      properties: json['properties'] == null
          ? null
          : Properties.fromJson(json['properties'] as Map<String, dynamic>),
      title: json['title'] as String?,
    );

Map<String, dynamic> _$ExtendedWarrantyDtoToJson(
        ExtendedWarrantyDto instance) =>
    <String, dynamic>{
      'type': instance.type,
      'required': instance.required,
      'properties': instance.properties,
      'title': instance.title,
    };
