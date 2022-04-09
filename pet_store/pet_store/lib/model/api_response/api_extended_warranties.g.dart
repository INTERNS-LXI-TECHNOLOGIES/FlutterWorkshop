// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_extended_warranties.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiExtendedWarranties _$ApiExtendedWarrantiesFromJson(
        Map<String, dynamic> json) =>
    ApiExtendedWarranties(
      apiExtendedWarrantiesGet: json['get'] == null
          ? null
          : Get.fromJson(json['get'] as Map<String, dynamic>),
      post: json['post'] == null
          ? null
          : Post.fromJson(json['post'] as Map<String, dynamic>),
      put: json['put'] == null
          ? null
          : Put.fromJson(json['put'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiExtendedWarrantiesToJson(
        ApiExtendedWarranties instance) =>
    <String, dynamic>{
      'get': instance.apiExtendedWarrantiesGet,
      'post': instance.post,
      'put': instance.put,
    };
