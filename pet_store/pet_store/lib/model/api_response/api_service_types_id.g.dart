// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_service_types_id.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiServiceTypesId _$ApiServiceTypesIdFromJson(Map<String, dynamic> json) =>
    ApiServiceTypesId(
      apiServiceTypesIdGet: json['get'] == null
          ? null
          : Get.fromJson(json['get'] as Map<String, dynamic>),
      delete: json['delete'] == null
          ? null
          : Delete.fromJson(json['delete'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiServiceTypesIdToJson(ApiServiceTypesId instance) =>
    <String, dynamic>{
      'get': instance.apiServiceTypesIdGet,
      'delete': instance.delete,
    };
