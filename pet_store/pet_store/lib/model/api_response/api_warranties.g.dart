// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_warranties.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiWarranties _$ApiWarrantiesFromJson(Map<String, dynamic> json) =>
    ApiWarranties(
      apiWarrantiesGet: json['get'] == null
          ? null
          : Get.fromJson(json['get'] as Map<String, dynamic>),
      post: json['post'] == null
          ? null
          : Post.fromJson(json['post'] as Map<String, dynamic>),
      put: json['put'] == null
          ? null
          : Put.fromJson(json['put'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiWarrantiesToJson(ApiWarranties instance) =>
    <String, dynamic>{
      'get': instance.apiWarrantiesGet,
      'post': instance.post,
      'put': instance.put,
    };
