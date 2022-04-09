// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_service_executives_id.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiServiceExecutivesId _$ApiServiceExecutivesIdFromJson(
        Map<String, dynamic> json) =>
    ApiServiceExecutivesId(
      apiServiceExecutivesIdGet: json['get'] == null
          ? null
          : Get.fromJson(json['get'] as Map<String, dynamic>),
      delete: json['delete'] == null
          ? null
          : Delete.fromJson(json['delete'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiServiceExecutivesIdToJson(
        ApiServiceExecutivesId instance) =>
    <String, dynamic>{
      'get': instance.apiServiceExecutivesIdGet,
      'delete': instance.delete,
    };
