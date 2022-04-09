// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_extended_warranty_histories_id.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiExtendedWarrantyHistoriesId _$ApiExtendedWarrantyHistoriesIdFromJson(
        Map<String, dynamic> json) =>
    ApiExtendedWarrantyHistoriesId(
      apiExtendedWarrantyHistoriesIdGet: json['get'] == null
          ? null
          : Get.fromJson(json['get'] as Map<String, dynamic>),
      delete: json['delete'] == null
          ? null
          : Delete.fromJson(json['delete'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiExtendedWarrantyHistoriesIdToJson(
        ApiExtendedWarrantyHistoriesId instance) =>
    <String, dynamic>{
      'get': instance.apiExtendedWarrantyHistoriesIdGet,
      'delete': instance.delete,
    };
