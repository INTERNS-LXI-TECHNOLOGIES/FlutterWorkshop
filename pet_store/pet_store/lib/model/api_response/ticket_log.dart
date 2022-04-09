import 'package:json_annotation/json_annotation.dart';

part 'ticket_log.g.dart';

@JsonSerializable()
class TicketLog {
  String? type;

  TicketLog({this.type});

  factory TicketLog.fromJson(Map<String, dynamic> json) {
    return _$TicketLogFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TicketLogToJson(this);
}
