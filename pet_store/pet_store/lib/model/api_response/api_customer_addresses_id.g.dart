// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_customer_addresses_id.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiCustomerAddressesId _$ApiCustomerAddressesIdFromJson(
        Map<String, dynamic> json) =>
    ApiCustomerAddressesId(
      apiCustomerAddressesIdGet: json['get'] == null
          ? null
          : Get.fromJson(json['get'] as Map<String, dynamic>),
      delete: json['delete'] == null
          ? null
          : Delete.fromJson(json['delete'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiCustomerAddressesIdToJson(
        ApiCustomerAddressesId instance) =>
    <String, dynamic>{
      'get': instance.apiCustomerAddressesIdGet,
      'delete': instance.delete,
    };
