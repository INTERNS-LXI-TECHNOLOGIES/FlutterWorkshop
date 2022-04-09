// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_states.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiStates _$ApiStatesFromJson(Map<String, dynamic> json) => ApiStates(
      apiStatesGet: json['get'] == null
          ? null
          : Get.fromJson(json['get'] as Map<String, dynamic>),
      post: json['post'] == null
          ? null
          : Post.fromJson(json['post'] as Map<String, dynamic>),
      put: json['put'] == null
          ? null
          : Put.fromJson(json['put'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiStatesToJson(ApiStates instance) => <String, dynamic>{
      'get': instance.apiStatesGet,
      'post': instance.post,
      'put': instance.put,
    };
