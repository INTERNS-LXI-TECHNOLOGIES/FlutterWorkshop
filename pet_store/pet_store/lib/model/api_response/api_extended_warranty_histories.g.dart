// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_extended_warranty_histories.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiExtendedWarrantyHistories _$ApiExtendedWarrantyHistoriesFromJson(
        Map<String, dynamic> json) =>
    ApiExtendedWarrantyHistories(
      apiExtendedWarrantyHistoriesGet: json['get'] == null
          ? null
          : Get.fromJson(json['get'] as Map<String, dynamic>),
      post: json['post'] == null
          ? null
          : Post.fromJson(json['post'] as Map<String, dynamic>),
      put: json['put'] == null
          ? null
          : Put.fromJson(json['put'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiExtendedWarrantyHistoriesToJson(
        ApiExtendedWarrantyHistories instance) =>
    <String, dynamic>{
      'get': instance.apiExtendedWarrantyHistoriesGet,
      'post': instance.post,
      'put': instance.put,
    };
