// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_activate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiActivate _$ApiActivateFromJson(Map<String, dynamic> json) => ApiActivate(
      apiActivateGet: json['get'] == null
          ? null
          : Get.fromJson(json['get'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiActivateToJson(ApiActivate instance) =>
    <String, dynamic>{
      'get': instance.apiActivateGet,
    };
