// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_branches_id.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiBranchesId _$ApiBranchesIdFromJson(Map<String, dynamic> json) =>
    ApiBranchesId(
      apiBranchesIdGet: json['get'] == null
          ? null
          : Get.fromJson(json['get'] as Map<String, dynamic>),
      delete: json['delete'] == null
          ? null
          : Delete.fromJson(json['delete'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiBranchesIdToJson(ApiBranchesId instance) =>
    <String, dynamic>{
      'get': instance.apiBranchesIdGet,
      'delete': instance.delete,
    };
