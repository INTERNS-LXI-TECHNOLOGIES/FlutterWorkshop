// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_tickets_id.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiTicketsId _$ApiTicketsIdFromJson(Map<String, dynamic> json) => ApiTicketsId(
      apiTicketsIdGet: json['get'] == null
          ? null
          : Get.fromJson(json['get'] as Map<String, dynamic>),
      delete: json['delete'] == null
          ? null
          : Delete.fromJson(json['delete'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiTicketsIdToJson(ApiTicketsId instance) =>
    <String, dynamic>{
      'get': instance.apiTicketsIdGet,
      'delete': instance.delete,
    };
