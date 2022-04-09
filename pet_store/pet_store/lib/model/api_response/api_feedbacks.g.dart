// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_feedbacks.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiFeedbacks _$ApiFeedbacksFromJson(Map<String, dynamic> json) => ApiFeedbacks(
      apiFeedbacksGet: json['get'] == null
          ? null
          : Get.fromJson(json['get'] as Map<String, dynamic>),
      post: json['post'] == null
          ? null
          : Post.fromJson(json['post'] as Map<String, dynamic>),
      put: json['put'] == null
          ? null
          : Put.fromJson(json['put'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiFeedbacksToJson(ApiFeedbacks instance) =>
    <String, dynamic>{
      'get': instance.apiFeedbacksGet,
      'post': instance.post,
      'put': instance.put,
    };
