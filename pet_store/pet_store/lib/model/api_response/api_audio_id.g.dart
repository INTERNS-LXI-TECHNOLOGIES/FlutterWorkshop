// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_audio_id.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiAudioId _$ApiAudioIdFromJson(Map<String, dynamic> json) => ApiAudioId(
      apiAudioIdGet: json['get'] == null
          ? null
          : Get.fromJson(json['get'] as Map<String, dynamic>),
      delete: json['delete'] == null
          ? null
          : Delete.fromJson(json['delete'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiAudioIdToJson(ApiAudioId instance) =>
    <String, dynamic>{
      'get': instance.apiAudioIdGet,
      'delete': instance.delete,
    };
