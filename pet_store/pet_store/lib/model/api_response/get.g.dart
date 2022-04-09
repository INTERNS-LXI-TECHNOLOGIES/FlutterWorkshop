// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Get _$GetFromJson(Map<String, dynamic> json) => Get(
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      summary: json['summary'] as String?,
      operationId: json['operationId'] as String?,
      produces: (json['produces'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      responses: json['responses'] == null
          ? null
          : Responses.fromJson(json['responses'] as Map<String, dynamic>),
      deprecated: json['deprecated'] as bool?,
    );

Map<String, dynamic> _$GetToJson(Get instance) => <String, dynamic>{
      'tags': instance.tags,
      'summary': instance.summary,
      'operationId': instance.operationId,
      'produces': instance.produces,
      'responses': instance.responses,
      'deprecated': instance.deprecated,
    };
