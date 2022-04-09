// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_loyalty_programs_id.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiLoyaltyProgramsId _$ApiLoyaltyProgramsIdFromJson(
        Map<String, dynamic> json) =>
    ApiLoyaltyProgramsId(
      apiLoyaltyProgramsIdGet: json['get'] == null
          ? null
          : Get.fromJson(json['get'] as Map<String, dynamic>),
      delete: json['delete'] == null
          ? null
          : Delete.fromJson(json['delete'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiLoyaltyProgramsIdToJson(
        ApiLoyaltyProgramsId instance) =>
    <String, dynamic>{
      'get': instance.apiLoyaltyProgramsIdGet,
      'delete': instance.delete,
    };
