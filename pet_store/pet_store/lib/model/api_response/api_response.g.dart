// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiResponse _$ApiResponseFromJson(Map<String, dynamic> json) => ApiResponse(
      swagger: json['swagger'] as String?,
      info: json['info'] == null
          ? null
          : Info.fromJson(json['info'] as Map<String, dynamic>),
      host: json['host'] as String?,
      basePath: json['basePath'] as String?,
      tags: (json['tags'] as List<dynamic>?)
          ?.map((e) => Tag.fromJson(e as Map<String, dynamic>))
          .toList(),
      paths: json['paths'] == null
          ? null
          : Paths.fromJson(json['paths'] as Map<String, dynamic>),
      definitions: json['definitions'] == null
          ? null
          : Definitions.fromJson(json['definitions'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiResponseToJson(ApiResponse instance) =>
    <String, dynamic>{
      'swagger': instance.swagger,
      'info': instance.info,
      'host': instance.host,
      'basePath': instance.basePath,
      'tags': instance.tags,
      'paths': instance.paths,
      'definitions': instance.definitions,
    };
