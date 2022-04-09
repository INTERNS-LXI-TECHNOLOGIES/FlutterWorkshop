// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_messages.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiMessages _$ApiMessagesFromJson(Map<String, dynamic> json) => ApiMessages(
      apiMessagesGet: json['get'] == null
          ? null
          : Get.fromJson(json['get'] as Map<String, dynamic>),
      post: json['post'] == null
          ? null
          : Post.fromJson(json['post'] as Map<String, dynamic>),
      put: json['put'] == null
          ? null
          : Put.fromJson(json['put'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiMessagesToJson(ApiMessages instance) =>
    <String, dynamic>{
      'get': instance.apiMessagesGet,
      'post': instance.post,
      'put': instance.put,
    };
