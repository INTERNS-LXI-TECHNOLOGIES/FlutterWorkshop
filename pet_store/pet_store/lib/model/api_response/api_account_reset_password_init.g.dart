// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_account_reset_password_init.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiAccountResetPasswordInit _$ApiAccountResetPasswordInitFromJson(
        Map<String, dynamic> json) =>
    ApiAccountResetPasswordInit(
      post: json['post'] == null
          ? null
          : Post.fromJson(json['post'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiAccountResetPasswordInitToJson(
        ApiAccountResetPasswordInit instance) =>
    <String, dynamic>{
      'post': instance.post,
    };
