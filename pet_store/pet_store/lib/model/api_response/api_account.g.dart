// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiAccount _$ApiAccountFromJson(Map<String, dynamic> json) => ApiAccount(
      apiAccountGet: json['get'] == null
          ? null
          : Get.fromJson(json['get'] as Map<String, dynamic>),
      post: json['post'] == null
          ? null
          : Post.fromJson(json['post'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiAccountToJson(ApiAccount instance) =>
    <String, dynamic>{
      'get': instance.apiAccountGet,
      'post': instance.post,
    };
