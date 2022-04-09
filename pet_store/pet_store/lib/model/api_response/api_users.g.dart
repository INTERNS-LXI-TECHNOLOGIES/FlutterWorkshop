// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_users.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiUsers _$ApiUsersFromJson(Map<String, dynamic> json) => ApiUsers(
      apiUsersGet: json['get'] == null
          ? null
          : Get.fromJson(json['get'] as Map<String, dynamic>),
      post: json['post'] == null
          ? null
          : Post.fromJson(json['post'] as Map<String, dynamic>),
      put: json['put'] == null
          ? null
          : Put.fromJson(json['put'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiUsersToJson(ApiUsers instance) => <String, dynamic>{
      'get': instance.apiUsersGet,
      'post': instance.post,
      'put': instance.put,
    };
