// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_states_id.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiStatesId _$ApiStatesIdFromJson(Map<String, dynamic> json) => ApiStatesId(
      apiStatesIdGet: json['get'] == null
          ? null
          : Get.fromJson(json['get'] as Map<String, dynamic>),
      delete: json['delete'] == null
          ? null
          : Delete.fromJson(json['delete'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiStatesIdToJson(ApiStatesId instance) =>
    <String, dynamic>{
      'get': instance.apiStatesIdGet,
      'delete': instance.delete,
    };
