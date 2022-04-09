// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_customers.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiCustomers _$ApiCustomersFromJson(Map<String, dynamic> json) => ApiCustomers(
      apiCustomersGet: json['get'] == null
          ? null
          : Get.fromJson(json['get'] as Map<String, dynamic>),
      post: json['post'] == null
          ? null
          : Post.fromJson(json['post'] as Map<String, dynamic>),
      put: json['put'] == null
          ? null
          : Put.fromJson(json['put'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiCustomersToJson(ApiCustomers instance) =>
    <String, dynamic>{
      'get': instance.apiCustomersGet,
      'post': instance.post,
      'put': instance.put,
    };
