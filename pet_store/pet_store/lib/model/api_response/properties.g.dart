// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'properties.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Properties _$PropertiesFromJson(Map<String, dynamic> json) => Properties(
      description: json['description'] == null
          ? null
          : Description.fromJson(json['description'] as Map<String, dynamic>),
      id: json['id'] == null
          ? null
          : Id.fromJson(json['id'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : Name.fromJson(json['name'] as Map<String, dynamic>),
      periodInMonths: json['periodInMonths'] == null
          ? null
          : PeriodInMonths.fromJson(
              json['periodInMonths'] as Map<String, dynamic>),
      periodInYear: json['periodInYear'] == null
          ? null
          : PeriodInYear.fromJson(json['periodInYear'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PropertiesToJson(Properties instance) =>
    <String, dynamic>{
      'description': instance.description,
      'id': instance.id,
      'name': instance.name,
      'periodInMonths': instance.periodInMonths,
      'periodInYear': instance.periodInYear,
    };
