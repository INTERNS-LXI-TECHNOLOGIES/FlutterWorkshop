// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_job_types_id.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiJobTypesId _$ApiJobTypesIdFromJson(Map<String, dynamic> json) =>
    ApiJobTypesId(
      apiJobTypesIdGet: json['get'] == null
          ? null
          : Get.fromJson(json['get'] as Map<String, dynamic>),
      delete: json['delete'] == null
          ? null
          : Delete.fromJson(json['delete'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiJobTypesIdToJson(ApiJobTypesId instance) =>
    <String, dynamic>{
      'get': instance.apiJobTypesIdGet,
      'delete': instance.delete,
    };
