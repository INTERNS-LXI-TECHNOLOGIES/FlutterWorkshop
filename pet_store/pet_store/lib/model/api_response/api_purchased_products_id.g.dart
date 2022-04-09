// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_purchased_products_id.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiPurchasedProductsId _$ApiPurchasedProductsIdFromJson(
        Map<String, dynamic> json) =>
    ApiPurchasedProductsId(
      apiPurchasedProductsIdGet: json['get'] == null
          ? null
          : Get.fromJson(json['get'] as Map<String, dynamic>),
      delete: json['delete'] == null
          ? null
          : Delete.fromJson(json['delete'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiPurchasedProductsIdToJson(
        ApiPurchasedProductsId instance) =>
    <String, dynamic>{
      'get': instance.apiPurchasedProductsIdGet,
      'delete': instance.delete,
    };
