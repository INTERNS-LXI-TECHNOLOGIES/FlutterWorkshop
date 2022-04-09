// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_attempt_histories_id.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiAttemptHistoriesId _$ApiAttemptHistoriesIdFromJson(
        Map<String, dynamic> json) =>
    ApiAttemptHistoriesId(
      apiAttemptHistoriesIdGet: json['get'] == null
          ? null
          : Get.fromJson(json['get'] as Map<String, dynamic>),
      delete: json['delete'] == null
          ? null
          : Delete.fromJson(json['delete'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiAttemptHistoriesIdToJson(
        ApiAttemptHistoriesId instance) =>
    <String, dynamic>{
      'get': instance.apiAttemptHistoriesIdGet,
      'delete': instance.delete,
    };
