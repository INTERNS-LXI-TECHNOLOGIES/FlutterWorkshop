// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_pin_codes_id.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiPinCodesId _$ApiPinCodesIdFromJson(Map<String, dynamic> json) =>
    ApiPinCodesId(
      apiPinCodesIdGet: json['get'] == null
          ? null
          : Get.fromJson(json['get'] as Map<String, dynamic>),
      delete: json['delete'] == null
          ? null
          : Delete.fromJson(json['delete'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiPinCodesIdToJson(ApiPinCodesId instance) =>
    <String, dynamic>{
      'get': instance.apiPinCodesIdGet,
      'delete': instance.delete,
    };
