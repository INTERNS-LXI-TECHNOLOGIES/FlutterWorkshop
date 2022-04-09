// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_loyalty_programs.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiLoyaltyPrograms _$ApiLoyaltyProgramsFromJson(Map<String, dynamic> json) =>
    ApiLoyaltyPrograms(
      apiLoyaltyProgramsGet: json['get'] == null
          ? null
          : Get.fromJson(json['get'] as Map<String, dynamic>),
      post: json['post'] == null
          ? null
          : Post.fromJson(json['post'] as Map<String, dynamic>),
      put: json['put'] == null
          ? null
          : Put.fromJson(json['put'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiLoyaltyProgramsToJson(ApiLoyaltyPrograms instance) =>
    <String, dynamic>{
      'get': instance.apiLoyaltyProgramsGet,
      'post': instance.post,
      'put': instance.put,
    };
