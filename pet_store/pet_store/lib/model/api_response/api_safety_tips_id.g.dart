// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_safety_tips_id.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiSafetyTipsId _$ApiSafetyTipsIdFromJson(Map<String, dynamic> json) =>
    ApiSafetyTipsId(
      apiSafetyTipsIdGet: json['get'] == null
          ? null
          : Get.fromJson(json['get'] as Map<String, dynamic>),
      delete: json['delete'] == null
          ? null
          : Delete.fromJson(json['delete'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiSafetyTipsIdToJson(ApiSafetyTipsId instance) =>
    <String, dynamic>{
      'get': instance.apiSafetyTipsIdGet,
      'delete': instance.delete,
    };
