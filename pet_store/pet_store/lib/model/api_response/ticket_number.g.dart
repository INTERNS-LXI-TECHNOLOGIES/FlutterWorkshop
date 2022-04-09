// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_number.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TicketNumber _$TicketNumberFromJson(Map<String, dynamic> json) => TicketNumber(
      type: json['type'] as String?,
      pattern: json['pattern'] as String?,
    );

Map<String, dynamic> _$TicketNumberToJson(TicketNumber instance) =>
    <String, dynamic>{
      'type': instance.type,
      'pattern': instance.pattern,
    };
