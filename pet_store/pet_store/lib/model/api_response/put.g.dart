// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'put.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Put _$PutFromJson(Map<String, dynamic> json) => Put(
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      summary: json['summary'] as String?,
      operationId: json['operationId'] as String?,
      consumes: (json['consumes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      produces: (json['produces'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      parameters: (json['parameters'] as List<dynamic>?)
          ?.map((e) => Parameter.fromJson(e as Map<String, dynamic>))
          .toList(),
      responses: json['responses'] == null
          ? null
          : Responses.fromJson(json['responses'] as Map<String, dynamic>),
      deprecated: json['deprecated'] as bool?,
    );

Map<String, dynamic> _$PutToJson(Put instance) => <String, dynamic>{
      'tags': instance.tags,
      'summary': instance.summary,
      'operationId': instance.operationId,
      'consumes': instance.consumes,
      'produces': instance.produces,
      'parameters': instance.parameters,
      'responses': instance.responses,
      'deprecated': instance.deprecated,
    };
