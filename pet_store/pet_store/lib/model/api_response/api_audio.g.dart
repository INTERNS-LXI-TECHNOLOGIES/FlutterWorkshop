// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_audio.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiAudio _$ApiAudioFromJson(Map<String, dynamic> json) => ApiAudio(
      apiAudioGet: json['get'] == null
          ? null
          : Get.fromJson(json['get'] as Map<String, dynamic>),
      post: json['post'] == null
          ? null
          : Post.fromJson(json['post'] as Map<String, dynamic>),
      put: json['put'] == null
          ? null
          : Put.fromJson(json['put'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiAudioToJson(ApiAudio instance) => <String, dynamic>{
      'get': instance.apiAudioGet,
      'post': instance.post,
      'put': instance.put,
    };
