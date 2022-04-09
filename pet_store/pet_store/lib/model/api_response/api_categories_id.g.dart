// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_categories_id.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiCategoriesId _$ApiCategoriesIdFromJson(Map<String, dynamic> json) =>
    ApiCategoriesId(
      apiCategoriesIdGet: json['get'] == null
          ? null
          : Get.fromJson(json['get'] as Map<String, dynamic>),
      delete: json['delete'] == null
          ? null
          : Delete.fromJson(json['delete'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiCategoriesIdToJson(ApiCategoriesId instance) =>
    <String, dynamic>{
      'get': instance.apiCategoriesIdGet,
      'delete': instance.delete,
    };
