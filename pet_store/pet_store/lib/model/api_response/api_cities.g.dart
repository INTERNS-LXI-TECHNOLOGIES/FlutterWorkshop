// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_cities.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiCities _$ApiCitiesFromJson(Map<String, dynamic> json) => ApiCities(
      apiCitiesGet: json['get'] == null
          ? null
          : Get.fromJson(json['get'] as Map<String, dynamic>),
      post: json['post'] == null
          ? null
          : Post.fromJson(json['post'] as Map<String, dynamic>),
      put: json['put'] == null
          ? null
          : Put.fromJson(json['put'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiCitiesToJson(ApiCities instance) => <String, dynamic>{
      'get': instance.apiCitiesGet,
      'post': instance.post,
      'put': instance.put,
    };
