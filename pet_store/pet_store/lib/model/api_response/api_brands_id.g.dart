// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_brands_id.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiBrandsId _$ApiBrandsIdFromJson(Map<String, dynamic> json) => ApiBrandsId(
      apiBrandsIdGet: json['get'] == null
          ? null
          : Get.fromJson(json['get'] as Map<String, dynamic>),
      delete: json['delete'] == null
          ? null
          : Delete.fromJson(json['delete'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiBrandsIdToJson(ApiBrandsId instance) =>
    <String, dynamic>{
      'get': instance.apiBrandsIdGet,
      'delete': instance.delete,
    };
