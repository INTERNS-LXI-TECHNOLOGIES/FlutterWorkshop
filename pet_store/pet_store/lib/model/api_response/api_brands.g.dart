// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_brands.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiBrands _$ApiBrandsFromJson(Map<String, dynamic> json) => ApiBrands(
      apiBrandsGet: json['get'] == null
          ? null
          : Get.fromJson(json['get'] as Map<String, dynamic>),
      post: json['post'] == null
          ? null
          : Post.fromJson(json['post'] as Map<String, dynamic>),
      put: json['put'] == null
          ? null
          : Put.fromJson(json['put'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiBrandsToJson(ApiBrands instance) => <String, dynamic>{
      'get': instance.apiBrandsGet,
      'post': instance.post,
      'put': instance.put,
    };
