// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_amcs.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiAmcs _$ApiAmcsFromJson(Map<String, dynamic> json) => ApiAmcs(
      apiAmcsGet: json['get'] == null
          ? null
          : Get.fromJson(json['get'] as Map<String, dynamic>),
      post: json['post'] == null
          ? null
          : Post.fromJson(json['post'] as Map<String, dynamic>),
      put: json['put'] == null
          ? null
          : Put.fromJson(json['put'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiAmcsToJson(ApiAmcs instance) => <String, dynamic>{
      'get': instance.apiAmcsGet,
      'post': instance.post,
      'put': instance.put,
    };
