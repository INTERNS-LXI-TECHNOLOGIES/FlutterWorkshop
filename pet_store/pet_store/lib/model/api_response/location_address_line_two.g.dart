// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_address_line_two.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LocationAddressLineTwo _$LocationAddressLineTwoFromJson(
        Map<String, dynamic> json) =>
    LocationAddressLineTwo(
      type: json['type'] as String?,
      minLength: json['minLength'] as int?,
      maxLength: json['maxLength'] as int?,
    );

Map<String, dynamic> _$LocationAddressLineTwoToJson(
        LocationAddressLineTwo instance) =>
    <String, dynamic>{
      'type': instance.type,
      'minLength': instance.minLength,
      'maxLength': instance.maxLength,
    };
