// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_answers_id.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiAnswersId _$ApiAnswersIdFromJson(Map<String, dynamic> json) => ApiAnswersId(
      apiAnswersIdGet: json['get'] == null
          ? null
          : Get.fromJson(json['get'] as Map<String, dynamic>),
      delete: json['delete'] == null
          ? null
          : Delete.fromJson(json['delete'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiAnswersIdToJson(ApiAnswersId instance) =>
    <String, dynamic>{
      'get': instance.apiAnswersIdGet,
      'delete': instance.delete,
    };
