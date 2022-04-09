// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_questions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiQuestions _$ApiQuestionsFromJson(Map<String, dynamic> json) => ApiQuestions(
      apiQuestionsGet: json['get'] == null
          ? null
          : Get.fromJson(json['get'] as Map<String, dynamic>),
      post: json['post'] == null
          ? null
          : Post.fromJson(json['post'] as Map<String, dynamic>),
      put: json['put'] == null
          ? null
          : Put.fromJson(json['put'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiQuestionsToJson(ApiQuestions instance) =>
    <String, dynamic>{
      'get': instance.apiQuestionsGet,
      'post': instance.post,
      'put': instance.put,
    };
