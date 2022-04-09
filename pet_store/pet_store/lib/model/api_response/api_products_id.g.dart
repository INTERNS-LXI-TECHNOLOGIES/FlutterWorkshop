// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_products_id.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiProductsId _$ApiProductsIdFromJson(Map<String, dynamic> json) =>
    ApiProductsId(
      apiProductsIdGet: json['get'] == null
          ? null
          : Get.fromJson(json['get'] as Map<String, dynamic>),
      delete: json['delete'] == null
          ? null
          : Delete.fromJson(json['delete'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiProductsIdToJson(ApiProductsId instance) =>
    <String, dynamic>{
      'get': instance.apiProductsIdGet,
      'delete': instance.delete,
    };
