// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Delete _$DeleteFromJson(Map<String, dynamic> json) => Delete(
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      summary: json['summary'] as String?,
      operationId: json['operationId'] as String?,
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

Map<String, dynamic> _$DeleteToJson(Delete instance) => <String, dynamic>{
      'tags': instance.tags,
      'summary': instance.summary,
      'operationId': instance.operationId,
      'produces': instance.produces,
      'parameters': instance.parameters,
      'responses': instance.responses,
      'deprecated': instance.deprecated,
    };
