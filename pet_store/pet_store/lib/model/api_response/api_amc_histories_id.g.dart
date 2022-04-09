// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_amc_histories_id.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiAmcHistoriesId _$ApiAmcHistoriesIdFromJson(Map<String, dynamic> json) =>
    ApiAmcHistoriesId(
      apiAmcHistoriesIdGet: json['get'] == null
          ? null
          : Get.fromJson(json['get'] as Map<String, dynamic>),
      delete: json['delete'] == null
          ? null
          : Delete.fromJson(json['delete'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiAmcHistoriesIdToJson(ApiAmcHistoriesId instance) =>
    <String, dynamic>{
      'get': instance.apiAmcHistoriesIdGet,
      'delete': instance.delete,
    };
