// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_cities_id.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiCitiesId _$ApiCitiesIdFromJson(Map<String, dynamic> json) => ApiCitiesId(
      apiCitiesIdGet: json['get'] == null
          ? null
          : Get.fromJson(json['get'] as Map<String, dynamic>),
      delete: json['delete'] == null
          ? null
          : Delete.fromJson(json['delete'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiCitiesIdToJson(ApiCitiesId instance) =>
    <String, dynamic>{
      'get': instance.apiCitiesIdGet,
      'delete': instance.delete,
    };
