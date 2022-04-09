// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_pin_codes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiPinCodes _$ApiPinCodesFromJson(Map<String, dynamic> json) => ApiPinCodes(
      apiPinCodesGet: json['get'] == null
          ? null
          : Get.fromJson(json['get'] as Map<String, dynamic>),
      post: json['post'] == null
          ? null
          : Post.fromJson(json['post'] as Map<String, dynamic>),
      put: json['put'] == null
          ? null
          : Put.fromJson(json['put'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiPinCodesToJson(ApiPinCodes instance) =>
    <String, dynamic>{
      'get': instance.apiPinCodesGet,
      'post': instance.post,
      'put': instance.put,
    };
