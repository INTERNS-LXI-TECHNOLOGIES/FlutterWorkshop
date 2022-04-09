// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_districts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiDistricts _$ApiDistrictsFromJson(Map<String, dynamic> json) => ApiDistricts(
      apiDistrictsGet: json['get'] == null
          ? null
          : Get.fromJson(json['get'] as Map<String, dynamic>),
      post: json['post'] == null
          ? null
          : Post.fromJson(json['post'] as Map<String, dynamic>),
      put: json['put'] == null
          ? null
          : Put.fromJson(json['put'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiDistrictsToJson(ApiDistricts instance) =>
    <String, dynamic>{
      'get': instance.apiDistrictsGet,
      'post': instance.post,
      'put': instance.put,
    };
