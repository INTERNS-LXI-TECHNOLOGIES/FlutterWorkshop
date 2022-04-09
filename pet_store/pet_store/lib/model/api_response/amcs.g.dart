// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'amcs.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Amcs _$AmcsFromJson(Map<String, dynamic> json) => Amcs(
      type: json['type'] as String?,
      items: json['items'] == null
          ? null
          : Items.fromJson(json['items'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AmcsToJson(Amcs instance) => <String, dynamic>{
      'type': instance.type,
      'items': instance.items,
    };
