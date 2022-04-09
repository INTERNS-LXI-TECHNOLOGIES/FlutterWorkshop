// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authorities.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Authorities _$AuthoritiesFromJson(Map<String, dynamic> json) => Authorities(
      type: json['type'] as String?,
      items: json['items'] == null
          ? null
          : Items.fromJson(json['items'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AuthoritiesToJson(Authorities instance) =>
    <String, dynamic>{
      'type': instance.type,
      'items': instance.items,
    };
