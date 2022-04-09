// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_service_types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiServiceTypes _$ApiServiceTypesFromJson(Map<String, dynamic> json) =>
    ApiServiceTypes(
      apiServiceTypesGet: json['get'] == null
          ? null
          : Get.fromJson(json['get'] as Map<String, dynamic>),
      post: json['post'] == null
          ? null
          : Post.fromJson(json['post'] as Map<String, dynamic>),
      put: json['put'] == null
          ? null
          : Put.fromJson(json['put'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiServiceTypesToJson(ApiServiceTypes instance) =>
    <String, dynamic>{
      'get': instance.apiServiceTypesGet,
      'post': instance.post,
      'put': instance.put,
    };
