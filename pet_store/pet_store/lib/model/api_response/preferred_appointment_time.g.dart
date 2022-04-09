// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'preferred_appointment_time.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PreferredAppointmentTime _$PreferredAppointmentTimeFromJson(
        Map<String, dynamic> json) =>
    PreferredAppointmentTime(
      type: json['type'] as String?,
      format: json['format'] as String?,
    );

Map<String, dynamic> _$PreferredAppointmentTimeToJson(
        PreferredAppointmentTime instance) =>
    <String, dynamic>{
      'type': instance.type,
      'format': instance.format,
    };
