// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_description.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JobDescription _$JobDescriptionFromJson(Map<String, dynamic> json) =>
    JobDescription(
      type: json['type'] as String?,
      minLength: json['minLength'] as int?,
      maxLength: json['maxLength'] as int?,
    );

Map<String, dynamic> _$JobDescriptionToJson(JobDescription instance) =>
    <String, dynamic>{
      'type': instance.type,
      'minLength': instance.minLength,
      'maxLength': instance.maxLength,
    };
