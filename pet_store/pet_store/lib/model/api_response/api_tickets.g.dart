// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_tickets.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiTickets _$ApiTicketsFromJson(Map<String, dynamic> json) => ApiTickets(
      apiTicketsGet: json['get'] == null
          ? null
          : Get.fromJson(json['get'] as Map<String, dynamic>),
      post: json['post'] == null
          ? null
          : Post.fromJson(json['post'] as Map<String, dynamic>),
      put: json['put'] == null
          ? null
          : Put.fromJson(json['put'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiTicketsToJson(ApiTickets instance) =>
    <String, dynamic>{
      'get': instance.apiTicketsGet,
      'post': instance.post,
      'put': instance.put,
    };
