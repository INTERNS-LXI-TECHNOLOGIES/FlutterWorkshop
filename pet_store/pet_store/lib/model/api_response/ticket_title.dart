import 'package:json_annotation/json_annotation.dart';

part 'ticket_title.g.dart';

@JsonSerializable()
class TicketTitle {
  String? type;

  TicketTitle({this.type});

  factory TicketTitle.fromJson(Map<String, dynamic> json) {
    return _$TicketTitleFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TicketTitleToJson(this);
}
