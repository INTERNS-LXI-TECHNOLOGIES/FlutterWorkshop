// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_amc_histories.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiAmcHistories _$ApiAmcHistoriesFromJson(Map<String, dynamic> json) =>
    ApiAmcHistories(
      apiAmcHistoriesGet: json['get'] == null
          ? null
          : Get.fromJson(json['get'] as Map<String, dynamic>),
      post: json['post'] == null
          ? null
          : Post.fromJson(json['post'] as Map<String, dynamic>),
      put: json['put'] == null
          ? null
          : Put.fromJson(json['put'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiAmcHistoriesToJson(ApiAmcHistories instance) =>
    <String, dynamic>{
      'get': instance.apiAmcHistoriesGet,
      'post': instance.post,
      'put': instance.put,
    };
