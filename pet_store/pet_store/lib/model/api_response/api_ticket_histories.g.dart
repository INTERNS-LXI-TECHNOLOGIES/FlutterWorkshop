// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_ticket_histories.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiTicketHistories _$ApiTicketHistoriesFromJson(Map<String, dynamic> json) =>
    ApiTicketHistories(
      apiTicketHistoriesGet: json['get'] == null
          ? null
          : Get.fromJson(json['get'] as Map<String, dynamic>),
      post: json['post'] == null
          ? null
          : Post.fromJson(json['post'] as Map<String, dynamic>),
      put: json['put'] == null
          ? null
          : Put.fromJson(json['put'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiTicketHistoriesToJson(ApiTicketHistories instance) =>
    <String, dynamic>{
      'get': instance.apiTicketHistoriesGet,
      'post': instance.post,
      'put': instance.put,
    };
