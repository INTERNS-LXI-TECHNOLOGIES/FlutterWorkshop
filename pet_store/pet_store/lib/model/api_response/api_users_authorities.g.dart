// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_users_authorities.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiUsersAuthorities _$ApiUsersAuthoritiesFromJson(Map<String, dynamic> json) =>
    ApiUsersAuthorities(
      apiUsersAuthoritiesGet: json['get'] == null
          ? null
          : Get.fromJson(json['get'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiUsersAuthoritiesToJson(
        ApiUsersAuthorities instance) =>
    <String, dynamic>{
      'get': instance.apiUsersAuthoritiesGet,
    };
