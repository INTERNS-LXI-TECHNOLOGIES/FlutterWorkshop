// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_description.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TicketDescription _$TicketDescriptionFromJson(Map<String, dynamic> json) =>
    TicketDescription(
      type: json['type'] as String?,
      minLength: json['minLength'] as int?,
      maxLength: json['maxLength'] as int?,
    );

Map<String, dynamic> _$TicketDescriptionToJson(TicketDescription instance) =>
    <String, dynamic>{
      'type': instance.type,
      'minLength': instance.minLength,
      'maxLength': instance.maxLength,
    };
