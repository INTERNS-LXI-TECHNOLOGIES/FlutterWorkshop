// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_account_change_password.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiAccountChangePassword _$ApiAccountChangePasswordFromJson(
        Map<String, dynamic> json) =>
    ApiAccountChangePassword(
      post: json['post'] == null
          ? null
          : Post.fromJson(json['post'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiAccountChangePasswordToJson(
        ApiAccountChangePassword instance) =>
    <String, dynamic>{
      'post': instance.post,
    };
