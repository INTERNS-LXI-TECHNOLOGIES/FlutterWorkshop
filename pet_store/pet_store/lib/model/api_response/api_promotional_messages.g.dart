// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_promotional_messages.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiPromotionalMessages _$ApiPromotionalMessagesFromJson(
        Map<String, dynamic> json) =>
    ApiPromotionalMessages(
      apiPromotionalMessagesGet: json['get'] == null
          ? null
          : Get.fromJson(json['get'] as Map<String, dynamic>),
      post: json['post'] == null
          ? null
          : Post.fromJson(json['post'] as Map<String, dynamic>),
      put: json['put'] == null
          ? null
          : Put.fromJson(json['put'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiPromotionalMessagesToJson(
        ApiPromotionalMessages instance) =>
    <String, dynamic>{
      'get': instance.apiPromotionalMessagesGet,
      'post': instance.post,
      'put': instance.put,
    };
