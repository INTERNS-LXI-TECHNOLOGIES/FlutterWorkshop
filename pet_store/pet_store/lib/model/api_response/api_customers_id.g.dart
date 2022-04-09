// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_customers_id.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiCustomersId _$ApiCustomersIdFromJson(Map<String, dynamic> json) =>
    ApiCustomersId(
      apiCustomersIdGet: json['get'] == null
          ? null
          : Get.fromJson(json['get'] as Map<String, dynamic>),
      delete: json['delete'] == null
          ? null
          : Delete.fromJson(json['delete'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiCustomersIdToJson(ApiCustomersId instance) =>
    <String, dynamic>{
      'get': instance.apiCustomersIdGet,
      'delete': instance.delete,
    };
