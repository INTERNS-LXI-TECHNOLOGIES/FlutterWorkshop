// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'extendted_warranties.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExtendtedWarranties _$ExtendtedWarrantiesFromJson(Map<String, dynamic> json) =>
    ExtendtedWarranties(
      type: json['type'] as String?,
      items: json['items'] == null
          ? null
          : Items.fromJson(json['items'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ExtendtedWarrantiesToJson(
        ExtendtedWarranties instance) =>
    <String, dynamic>{
      'type': instance.type,
      'items': instance.items,
    };
