// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_categories.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiCategories _$ApiCategoriesFromJson(Map<String, dynamic> json) =>
    ApiCategories(
      apiCategoriesGet: json['get'] == null
          ? null
          : Get.fromJson(json['get'] as Map<String, dynamic>),
      post: json['post'] == null
          ? null
          : Post.fromJson(json['post'] as Map<String, dynamic>),
      put: json['put'] == null
          ? null
          : Put.fromJson(json['put'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiCategoriesToJson(ApiCategories instance) =>
    <String, dynamic>{
      'get': instance.apiCategoriesGet,
      'post': instance.post,
      'put': instance.put,
    };
