// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parameter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Parameter _$ParameterFromJson(Map<String, dynamic> json) => Parameter(
      parameterIn: json['in'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      required: json['required'] as bool?,
      schema: json['schema'] == null
          ? null
          : Schema.fromJson(json['schema'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ParameterToJson(Parameter instance) => <String, dynamic>{
      'in': instance.parameterIn,
      'name': instance.name,
      'description': instance.description,
      'required': instance.required,
      'schema': instance.schema,
    };
