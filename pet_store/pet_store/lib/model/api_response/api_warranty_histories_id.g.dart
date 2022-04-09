// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_warranty_histories_id.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiWarrantyHistoriesId _$ApiWarrantyHistoriesIdFromJson(
        Map<String, dynamic> json) =>
    ApiWarrantyHistoriesId(
      apiWarrantyHistoriesIdGet: json['get'] == null
          ? null
          : Get.fromJson(json['get'] as Map<String, dynamic>),
      delete: json['delete'] == null
          ? null
          : Delete.fromJson(json['delete'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiWarrantyHistoriesIdToJson(
        ApiWarrantyHistoriesId instance) =>
    <String, dynamic>{
      'get': instance.apiWarrantyHistoriesIdGet,
      'delete': instance.delete,
    };
