// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_answers.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiAnswers _$ApiAnswersFromJson(Map<String, dynamic> json) => ApiAnswers(
      apiAnswersGet: json['get'] == null
          ? null
          : Get.fromJson(json['get'] as Map<String, dynamic>),
      post: json['post'] == null
          ? null
          : Post.fromJson(json['post'] as Map<String, dynamic>),
      put: json['put'] == null
          ? null
          : Put.fromJson(json['put'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiAnswersToJson(ApiAnswers instance) =>
    <String, dynamic>{
      'get': instance.apiAnswersGet,
      'post': instance.post,
      'put': instance.put,
    };
