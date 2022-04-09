// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'first_name.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FirstName _$FirstNameFromJson(Map<String, dynamic> json) => FirstName(
      type: json['type'] as String?,
      minLength: json['minLength'] as int?,
      maxLength: json['maxLength'] as int?,
    );

Map<String, dynamic> _$FirstNameToJson(FirstName instance) => <String, dynamic>{
      'type': instance.type,
      'minLength': instance.minLength,
      'maxLength': instance.maxLength,
    };
