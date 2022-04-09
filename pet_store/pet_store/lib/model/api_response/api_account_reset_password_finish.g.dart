// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_account_reset_password_finish.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiAccountResetPasswordFinish _$ApiAccountResetPasswordFinishFromJson(
        Map<String, dynamic> json) =>
    ApiAccountResetPasswordFinish(
      post: json['post'] == null
          ? null
          : Post.fromJson(json['post'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiAccountResetPasswordFinishToJson(
        ApiAccountResetPasswordFinish instance) =>
    <String, dynamic>{
      'post': instance.post,
    };
