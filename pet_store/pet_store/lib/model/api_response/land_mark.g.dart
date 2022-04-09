// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'land_mark.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LandMark _$LandMarkFromJson(Map<String, dynamic> json) => LandMark(
      type: json['type'] as String?,
      minLength: json['minLength'] as int?,
      maxLength: json['maxLength'] as int?,
    );

Map<String, dynamic> _$LandMarkToJson(LandMark instance) => <String, dynamic>{
      'type': instance.type,
      'minLength': instance.minLength,
      'maxLength': instance.maxLength,
    };
