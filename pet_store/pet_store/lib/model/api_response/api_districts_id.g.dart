// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_districts_id.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiDistrictsId _$ApiDistrictsIdFromJson(Map<String, dynamic> json) =>
    ApiDistrictsId(
      apiDistrictsIdGet: json['get'] == null
          ? null
          : Get.fromJson(json['get'] as Map<String, dynamic>),
      delete: json['delete'] == null
          ? null
          : Delete.fromJson(json['delete'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiDistrictsIdToJson(ApiDistrictsId instance) =>
    <String, dynamic>{
      'get': instance.apiDistrictsIdGet,
      'delete': instance.delete,
    };
