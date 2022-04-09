// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_service_executive_ratings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiServiceExecutiveRatings _$ApiServiceExecutiveRatingsFromJson(
        Map<String, dynamic> json) =>
    ApiServiceExecutiveRatings(
      apiServiceExecutiveRatingsGet: json['get'] == null
          ? null
          : Get.fromJson(json['get'] as Map<String, dynamic>),
      post: json['post'] == null
          ? null
          : Post.fromJson(json['post'] as Map<String, dynamic>),
      put: json['put'] == null
          ? null
          : Put.fromJson(json['put'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiServiceExecutiveRatingsToJson(
        ApiServiceExecutiveRatings instance) =>
    <String, dynamic>{
      'get': instance.apiServiceExecutiveRatingsGet,
      'post': instance.post,
      'put': instance.put,
    };
