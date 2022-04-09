import 'package:json_annotation/json_annotation.dart';

part 'preferred_appointment_time.g.dart';

@JsonSerializable()
class PreferredAppointmentTime {
  String? type;
  String? format;

  PreferredAppointmentTime({this.type, this.format});

  factory PreferredAppointmentTime.fromJson(Map<String, dynamic> json) {
    return _$PreferredAppointmentTimeFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PreferredAppointmentTimeToJson(this);
}
