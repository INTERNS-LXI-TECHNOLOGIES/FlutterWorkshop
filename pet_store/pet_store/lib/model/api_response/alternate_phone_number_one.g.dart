// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alternate_phone_number_one.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AlternatePhoneNumberOne _$AlternatePhoneNumberOneFromJson(
        Map<String, dynamic> json) =>
    AlternatePhoneNumberOne(
      type: json['type'] as String?,
      minLength: json['minLength'] as int?,
      maxLength: json['maxLength'] as int?,
      pattern: json['pattern'] as String?,
    );

Map<String, dynamic> _$AlternatePhoneNumberOneToJson(
        AlternatePhoneNumberOne instance) =>
    <String, dynamic>{
      'type': instance.type,
      'minLength': instance.minLength,
      'maxLength': instance.maxLength,
      'pattern': instance.pattern,
    };
