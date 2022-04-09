// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_messages_id.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiMessagesId _$ApiMessagesIdFromJson(Map<String, dynamic> json) =>
    ApiMessagesId(
      apiMessagesIdGet: json['get'] == null
          ? null
          : Get.fromJson(json['get'] as Map<String, dynamic>),
      delete: json['delete'] == null
          ? null
          : Delete.fromJson(json['delete'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiMessagesIdToJson(ApiMessagesId instance) =>
    <String, dynamic>{
      'get': instance.apiMessagesIdGet,
      'delete': instance.delete,
    };
