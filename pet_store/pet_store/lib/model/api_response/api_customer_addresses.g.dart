// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_customer_addresses.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiCustomerAddresses _$ApiCustomerAddressesFromJson(
        Map<String, dynamic> json) =>
    ApiCustomerAddresses(
      apiCustomerAddressesGet: json['get'] == null
          ? null
          : Get.fromJson(json['get'] as Map<String, dynamic>),
      post: json['post'] == null
          ? null
          : Post.fromJson(json['post'] as Map<String, dynamic>),
      put: json['put'] == null
          ? null
          : Put.fromJson(json['put'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiCustomerAddressesToJson(
        ApiCustomerAddresses instance) =>
    <String, dynamic>{
      'get': instance.apiCustomerAddressesGet,
      'post': instance.post,
      'put': instance.put,
    };
