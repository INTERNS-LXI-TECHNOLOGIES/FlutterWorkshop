// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_purchased_products.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiPurchasedProducts _$ApiPurchasedProductsFromJson(
        Map<String, dynamic> json) =>
    ApiPurchasedProducts(
      apiPurchasedProductsGet: json['get'] == null
          ? null
          : Get.fromJson(json['get'] as Map<String, dynamic>),
      post: json['post'] == null
          ? null
          : Post.fromJson(json['post'] as Map<String, dynamic>),
      put: json['put'] == null
          ? null
          : Put.fromJson(json['put'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiPurchasedProductsToJson(
        ApiPurchasedProducts instance) =>
    <String, dynamic>{
      'get': instance.apiPurchasedProductsGet,
      'post': instance.post,
      'put': instance.put,
    };
