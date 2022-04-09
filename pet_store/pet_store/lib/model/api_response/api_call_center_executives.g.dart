// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_call_center_executives.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiCallCenterExecutives _$ApiCallCenterExecutivesFromJson(
        Map<String, dynamic> json) =>
    ApiCallCenterExecutives(
      apiCallCenterExecutivesGet: json['get'] == null
          ? null
          : Get.fromJson(json['get'] as Map<String, dynamic>),
      post: json['post'] == null
          ? null
          : Post.fromJson(json['post'] as Map<String, dynamic>),
      put: json['put'] == null
          ? null
          : Put.fromJson(json['put'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiCallCenterExecutivesToJson(
        ApiCallCenterExecutives instance) =>
    <String, dynamic>{
      'get': instance.apiCallCenterExecutivesGet,
      'post': instance.post,
      'put': instance.put,
    };
