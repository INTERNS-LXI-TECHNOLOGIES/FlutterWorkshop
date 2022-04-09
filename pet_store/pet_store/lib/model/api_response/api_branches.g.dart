// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_branches.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiBranches _$ApiBranchesFromJson(Map<String, dynamic> json) => ApiBranches(
      apiBranchesGet: json['get'] == null
          ? null
          : Get.fromJson(json['get'] as Map<String, dynamic>),
      post: json['post'] == null
          ? null
          : Post.fromJson(json['post'] as Map<String, dynamic>),
      put: json['put'] == null
          ? null
          : Put.fromJson(json['put'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiBranchesToJson(ApiBranches instance) =>
    <String, dynamic>{
      'get': instance.apiBranchesGet,
      'post': instance.post,
      'put': instance.put,
    };
