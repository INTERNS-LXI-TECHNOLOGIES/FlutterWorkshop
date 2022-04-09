// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_register.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiRegister _$ApiRegisterFromJson(Map<String, dynamic> json) => ApiRegister(
      post: json['post'] == null
          ? null
          : Post.fromJson(json['post'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiRegisterToJson(ApiRegister instance) =>
    <String, dynamic>{
      'post': instance.post,
    };
