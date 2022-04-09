// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'warranties.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Warranties _$WarrantiesFromJson(Map<String, dynamic> json) => Warranties(
      type: json['type'] as String?,
      items: json['items'] == null
          ? null
          : Items.fromJson(json['items'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WarrantiesToJson(Warranties instance) =>
    <String, dynamic>{
      'type': instance.type,
      'items': instance.items,
    };
