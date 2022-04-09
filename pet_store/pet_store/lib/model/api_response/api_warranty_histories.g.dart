// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_warranty_histories.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiWarrantyHistories _$ApiWarrantyHistoriesFromJson(
        Map<String, dynamic> json) =>
    ApiWarrantyHistories(
      apiWarrantyHistoriesGet: json['get'] == null
          ? null
          : Get.fromJson(json['get'] as Map<String, dynamic>),
      post: json['post'] == null
          ? null
          : Post.fromJson(json['post'] as Map<String, dynamic>),
      put: json['put'] == null
          ? null
          : Put.fromJson(json['put'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiWarrantyHistoriesToJson(
        ApiWarrantyHistories instance) =>
    <String, dynamic>{
      'get': instance.apiWarrantyHistoriesGet,
      'post': instance.post,
      'put': instance.put,
    };
