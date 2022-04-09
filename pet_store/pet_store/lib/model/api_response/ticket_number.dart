import 'package:json_annotation/json_annotation.dart';

part 'ticket_number.g.dart';

@JsonSerializable()
class TicketNumber {
  String? type;
  String? pattern;

  TicketNumber({this.type, this.pattern});

  factory TicketNumber.fromJson(Map<String, dynamic> json) {
    return _$TicketNumberFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TicketNumberToJson(this);
}
