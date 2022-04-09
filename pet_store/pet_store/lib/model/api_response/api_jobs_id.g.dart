// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_jobs_id.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiJobsId _$ApiJobsIdFromJson(Map<String, dynamic> json) => ApiJobsId(
      apiJobsIdGet: json['get'] == null
          ? null
          : Get.fromJson(json['get'] as Map<String, dynamic>),
      delete: json['delete'] == null
          ? null
          : Delete.fromJson(json['delete'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiJobsIdToJson(ApiJobsId instance) => <String, dynamic>{
      'get': instance.apiJobsIdGet,
      'delete': instance.delete,
    };
