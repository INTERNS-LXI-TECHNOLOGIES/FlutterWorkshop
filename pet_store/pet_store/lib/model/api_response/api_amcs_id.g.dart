// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_amcs_id.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiAmcsId _$ApiAmcsIdFromJson(Map<String, dynamic> json) => ApiAmcsId(
      apiAmcsIdGet: json['get'] == null
          ? null
          : Get.fromJson(json['get'] as Map<String, dynamic>),
      delete: json['delete'] == null
          ? null
          : Delete.fromJson(json['delete'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiAmcsIdToJson(ApiAmcsId instance) => <String, dynamic>{
      'get': instance.apiAmcsIdGet,
      'delete': instance.delete,
    };
