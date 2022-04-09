// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_warranties_id.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiWarrantiesId _$ApiWarrantiesIdFromJson(Map<String, dynamic> json) =>
    ApiWarrantiesId(
      apiWarrantiesIdGet: json['get'] == null
          ? null
          : Get.fromJson(json['get'] as Map<String, dynamic>),
      delete: json['delete'] == null
          ? null
          : Delete.fromJson(json['delete'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiWarrantiesIdToJson(ApiWarrantiesId instance) =>
    <String, dynamic>{
      'get': instance.apiWarrantiesIdGet,
      'delete': instance.delete,
    };
