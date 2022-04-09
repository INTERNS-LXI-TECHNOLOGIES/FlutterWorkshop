// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purchased_product_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PurchasedProductDto _$PurchasedProductDtoFromJson(Map<String, dynamic> json) =>
    PurchasedProductDto(
      type: json['type'] as String?,
      properties: json['properties'] == null
          ? null
          : Properties.fromJson(json['properties'] as Map<String, dynamic>),
      title: json['title'] as String?,
    );

Map<String, dynamic> _$PurchasedProductDtoToJson(
        PurchasedProductDto instance) =>
    <String, dynamic>{
      'type': instance.type,
      'properties': instance.properties,
      'title': instance.title,
    };
