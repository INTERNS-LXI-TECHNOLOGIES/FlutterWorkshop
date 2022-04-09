import 'package:json_annotation/json_annotation.dart';

part 'ticket_id.g.dart';

@JsonSerializable()
class TicketId {
  String? type;
  String? format;

  TicketId({this.type, this.format});

  factory TicketId.fromJson(Map<String, dynamic> json) {
    return _$TicketIdFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TicketIdToJson(this);
}
