// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_authenticate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiAuthenticate _$ApiAuthenticateFromJson(Map<String, dynamic> json) =>
    ApiAuthenticate(
      apiAuthenticateGet: json['get'] == null
          ? null
          : Get.fromJson(json['get'] as Map<String, dynamic>),
      post: json['post'] == null
          ? null
          : Post.fromJson(json['post'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiAuthenticateToJson(ApiAuthenticate instance) =>
    <String, dynamic>{
      'get': instance.apiAuthenticateGet,
      'post': instance.post,
    };
