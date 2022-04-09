// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_call_center_executives_id.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiCallCenterExecutivesId _$ApiCallCenterExecutivesIdFromJson(
        Map<String, dynamic> json) =>
    ApiCallCenterExecutivesId(
      apiCallCenterExecutivesIdGet: json['get'] == null
          ? null
          : Get.fromJson(json['get'] as Map<String, dynamic>),
      delete: json['delete'] == null
          ? null
          : Delete.fromJson(json['delete'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiCallCenterExecutivesIdToJson(
        ApiCallCenterExecutivesId instance) =>
    <String, dynamic>{
      'get': instance.apiCallCenterExecutivesIdGet,
      'delete': instance.delete,
    };
