// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'last_name.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LastName _$LastNameFromJson(Map<String, dynamic> json) => LastName(
      type: json['type'] as String?,
      minLength: json['minLength'] as int?,
      maxLength: json['maxLength'] as int?,
    );

Map<String, dynamic> _$LastNameToJson(LastName instance) => <String, dynamic>{
      'type': instance.type,
      'minLength': instance.minLength,
      'maxLength': instance.maxLength,
    };
