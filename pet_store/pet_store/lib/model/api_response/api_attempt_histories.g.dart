// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_attempt_histories.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiAttemptHistories _$ApiAttemptHistoriesFromJson(Map<String, dynamic> json) =>
    ApiAttemptHistories(
      apiAttemptHistoriesGet: json['get'] == null
          ? null
          : Get.fromJson(json['get'] as Map<String, dynamic>),
      post: json['post'] == null
          ? null
          : Post.fromJson(json['post'] as Map<String, dynamic>),
      put: json['put'] == null
          ? null
          : Put.fromJson(json['put'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiAttemptHistoriesToJson(
        ApiAttemptHistories instance) =>
    <String, dynamic>{
      'get': instance.apiAttemptHistoriesGet,
      'post': instance.post,
      'put': instance.put,
    };
