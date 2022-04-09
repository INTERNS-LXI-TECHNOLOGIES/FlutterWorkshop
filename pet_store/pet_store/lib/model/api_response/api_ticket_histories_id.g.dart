// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_ticket_histories_id.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiTicketHistoriesId _$ApiTicketHistoriesIdFromJson(
        Map<String, dynamic> json) =>
    ApiTicketHistoriesId(
      apiTicketHistoriesIdGet: json['get'] == null
          ? null
          : Get.fromJson(json['get'] as Map<String, dynamic>),
      delete: json['delete'] == null
          ? null
          : Delete.fromJson(json['delete'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiTicketHistoriesIdToJson(
        ApiTicketHistoriesId instance) =>
    <String, dynamic>{
      'get': instance.apiTicketHistoriesIdGet,
      'delete': instance.delete,
    };
