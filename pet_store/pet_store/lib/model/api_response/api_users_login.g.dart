// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_users_login.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiUsersLogin _$ApiUsersLoginFromJson(Map<String, dynamic> json) =>
    ApiUsersLogin(
      apiUsersLoginGet: json['get'] == null
          ? null
          : Get.fromJson(json['get'] as Map<String, dynamic>),
      delete: json['delete'] == null
          ? null
          : Delete.fromJson(json['delete'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiUsersLoginToJson(ApiUsersLogin instance) =>
    <String, dynamic>{
      'get': instance.apiUsersLoginGet,
      'delete': instance.delete,
    };
