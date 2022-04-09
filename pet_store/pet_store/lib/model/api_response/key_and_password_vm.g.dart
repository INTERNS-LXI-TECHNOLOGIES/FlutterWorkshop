// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'key_and_password_vm.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

KeyAndPasswordVm _$KeyAndPasswordVmFromJson(Map<String, dynamic> json) =>
    KeyAndPasswordVm(
      type: json['type'] as String?,
      properties: json['properties'] == null
          ? null
          : Properties.fromJson(json['properties'] as Map<String, dynamic>),
      title: json['title'] as String?,
    );

Map<String, dynamic> _$KeyAndPasswordVmToJson(KeyAndPasswordVm instance) =>
    <String, dynamic>{
      'type': instance.type,
      'properties': instance.properties,
      'title': instance.title,
    };
