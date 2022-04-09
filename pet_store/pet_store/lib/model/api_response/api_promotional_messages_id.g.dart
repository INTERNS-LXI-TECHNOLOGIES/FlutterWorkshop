// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_promotional_messages_id.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiPromotionalMessagesId _$ApiPromotionalMessagesIdFromJson(
        Map<String, dynamic> json) =>
    ApiPromotionalMessagesId(
      apiPromotionalMessagesIdGet: json['get'] == null
          ? null
          : Get.fromJson(json['get'] as Map<String, dynamic>),
      delete: json['delete'] == null
          ? null
          : Delete.fromJson(json['delete'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiPromotionalMessagesIdToJson(
        ApiPromotionalMessagesId instance) =>
    <String, dynamic>{
      'get': instance.apiPromotionalMessagesIdGet,
      'delete': instance.delete,
    };
