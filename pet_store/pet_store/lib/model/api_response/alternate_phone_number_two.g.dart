// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alternate_phone_number_two.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AlternatePhoneNumberTwo _$AlternatePhoneNumberTwoFromJson(
        Map<String, dynamic> json) =>
    AlternatePhoneNumberTwo(
      type: json['type'] as String?,
      minLength: json['minLength'] as int?,
      maxLength: json['maxLength'] as int?,
      pattern: json['pattern'] as String?,
    );

Map<String, dynamic> _$AlternatePhoneNumberTwoToJson(
        AlternatePhoneNumberTwo instance) =>
    <String, dynamic>{
      'type': instance.type,
      'minLength': instance.minLength,
      'maxLength': instance.maxLength,
      'pattern': instance.pattern,
    };
