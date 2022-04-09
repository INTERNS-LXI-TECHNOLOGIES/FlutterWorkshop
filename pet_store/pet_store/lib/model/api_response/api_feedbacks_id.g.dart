// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_feedbacks_id.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiFeedbacksId _$ApiFeedbacksIdFromJson(Map<String, dynamic> json) =>
    ApiFeedbacksId(
      apiFeedbacksIdGet: json['get'] == null
          ? null
          : Get.fromJson(json['get'] as Map<String, dynamic>),
      delete: json['delete'] == null
          ? null
          : Delete.fromJson(json['delete'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiFeedbacksIdToJson(ApiFeedbacksId instance) =>
    <String, dynamic>{
      'get': instance.apiFeedbacksIdGet,
      'delete': instance.delete,
    };
