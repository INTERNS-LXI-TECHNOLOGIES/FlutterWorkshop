// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_service_executive_ratings_id.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiServiceExecutiveRatingsId _$ApiServiceExecutiveRatingsIdFromJson(
        Map<String, dynamic> json) =>
    ApiServiceExecutiveRatingsId(
      apiServiceExecutiveRatingsIdGet: json['get'] == null
          ? null
          : Get.fromJson(json['get'] as Map<String, dynamic>),
      delete: json['delete'] == null
          ? null
          : Delete.fromJson(json['delete'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiServiceExecutiveRatingsIdToJson(
        ApiServiceExecutiveRatingsId instance) =>
    <String, dynamic>{
      'get': instance.apiServiceExecutiveRatingsIdGet,
      'delete': instance.delete,
    };
