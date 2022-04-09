// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_job_histories.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiJobHistories _$ApiJobHistoriesFromJson(Map<String, dynamic> json) =>
    ApiJobHistories(
      apiJobHistoriesGet: json['get'] == null
          ? null
          : Get.fromJson(json['get'] as Map<String, dynamic>),
      post: json['post'] == null
          ? null
          : Post.fromJson(json['post'] as Map<String, dynamic>),
      put: json['put'] == null
          ? null
          : Put.fromJson(json['put'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiJobHistoriesToJson(ApiJobHistories instance) =>
    <String, dynamic>{
      'get': instance.apiJobHistoriesGet,
      'post': instance.post,
      'put': instance.put,
    };
