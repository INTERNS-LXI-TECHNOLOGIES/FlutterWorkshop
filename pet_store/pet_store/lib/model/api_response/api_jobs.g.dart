// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_jobs.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiJobs _$ApiJobsFromJson(Map<String, dynamic> json) => ApiJobs(
      apiJobsGet: json['get'] == null
          ? null
          : Get.fromJson(json['get'] as Map<String, dynamic>),
      post: json['post'] == null
          ? null
          : Post.fromJson(json['post'] as Map<String, dynamic>),
      put: json['put'] == null
          ? null
          : Put.fromJson(json['put'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiJobsToJson(ApiJobs instance) => <String, dynamic>{
      'get': instance.apiJobsGet,
      'post': instance.post,
      'put': instance.put,
    };
