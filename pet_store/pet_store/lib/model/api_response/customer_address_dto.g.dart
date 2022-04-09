// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_address_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerAddressDto _$CustomerAddressDtoFromJson(Map<String, dynamic> json) =>
    CustomerAddressDto(
      type: json['type'] as String?,
      properties: json['properties'] == null
          ? null
          : Properties.fromJson(json['properties'] as Map<String, dynamic>),
      title: json['title'] as String?,
    );

Map<String, dynamic> _$CustomerAddressDtoToJson(CustomerAddressDto instance) =>
    <String, dynamic>{
      'type': instance.type,
      'properties': instance.properties,
      'title': instance.title,
    };
