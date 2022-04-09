// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_job_types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiJobTypes _$ApiJobTypesFromJson(Map<String, dynamic> json) => ApiJobTypes(
      apiJobTypesGet: json['get'] == null
          ? null
          : Get.fromJson(json['get'] as Map<String, dynamic>),
      post: json['post'] == null
          ? null
          : Post.fromJson(json['post'] as Map<String, dynamic>),
      put: json['put'] == null
          ? null
          : Put.fromJson(json['put'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiJobTypesToJson(ApiJobTypes instance) =>
    <String, dynamic>{
      'get': instance.apiJobTypesGet,
      'post': instance.post,
      'put': instance.put,
    };
