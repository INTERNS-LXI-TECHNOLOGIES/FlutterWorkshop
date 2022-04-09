// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_extended_warranties_id.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiExtendedWarrantiesId _$ApiExtendedWarrantiesIdFromJson(
        Map<String, dynamic> json) =>
    ApiExtendedWarrantiesId(
      apiExtendedWarrantiesIdGet: json['get'] == null
          ? null
          : Get.fromJson(json['get'] as Map<String, dynamic>),
      delete: json['delete'] == null
          ? null
          : Delete.fromJson(json['delete'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiExtendedWarrantiesIdToJson(
        ApiExtendedWarrantiesId instance) =>
    <String, dynamic>{
      'get': instance.apiExtendedWarrantiesIdGet,
      'delete': instance.delete,
    };
