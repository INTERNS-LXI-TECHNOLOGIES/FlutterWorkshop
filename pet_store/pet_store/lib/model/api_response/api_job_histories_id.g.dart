// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_job_histories_id.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiJobHistoriesId _$ApiJobHistoriesIdFromJson(Map<String, dynamic> json) =>
    ApiJobHistoriesId(
      apiJobHistoriesIdGet: json['get'] == null
          ? null
          : Get.fromJson(json['get'] as Map<String, dynamic>),
      delete: json['delete'] == null
          ? null
          : Delete.fromJson(json['delete'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiJobHistoriesIdToJson(ApiJobHistoriesId instance) =>
    <String, dynamic>{
      'get': instance.apiJobHistoriesIdGet,
      'delete': instance.delete,
    };
