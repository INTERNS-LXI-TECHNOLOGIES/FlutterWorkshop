// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_questions_id.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiQuestionsId _$ApiQuestionsIdFromJson(Map<String, dynamic> json) =>
    ApiQuestionsId(
      apiQuestionsIdGet: json['get'] == null
          ? null
          : Get.fromJson(json['get'] as Map<String, dynamic>),
      delete: json['delete'] == null
          ? null
          : Delete.fromJson(json['delete'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiQuestionsIdToJson(ApiQuestionsId instance) =>
    <String, dynamic>{
      'get': instance.apiQuestionsIdGet,
      'delete': instance.delete,
    };
