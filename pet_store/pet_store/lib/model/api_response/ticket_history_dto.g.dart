// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_history_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TicketHistoryDto _$TicketHistoryDtoFromJson(Map<String, dynamic> json) =>
    TicketHistoryDto(
      type: json['type'] as String?,
      required: (json['required'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      properties: json['properties'] == null
          ? null
          : Properties.fromJson(json['properties'] as Map<String, dynamic>),
      title: json['title'] as String?,
    );

Map<String, dynamic> _$TicketHistoryDtoToJson(TicketHistoryDto instance) =>
    <String, dynamic>{
      'type': instance.type,
      'required': instance.required,
      'properties': instance.properties,
      'title': instance.title,
    };
