// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_address_line_one.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LocationAddressLineOne _$LocationAddressLineOneFromJson(
        Map<String, dynamic> json) =>
    LocationAddressLineOne(
      type: json['type'] as String?,
      minLength: json['minLength'] as int?,
      maxLength: json['maxLength'] as int?,
    );

Map<String, dynamic> _$LocationAddressLineOneToJson(
        LocationAddressLineOne instance) =>
    <String, dynamic>{
      'type': instance.type,
      'minLength': instance.minLength,
      'maxLength': instance.maxLength,
    };
