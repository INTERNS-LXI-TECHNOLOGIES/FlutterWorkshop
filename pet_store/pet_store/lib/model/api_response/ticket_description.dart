import 'package:json_annotation/json_annotation.dart';

part 'ticket_description.g.dart';

@JsonSerializable()
class TicketDescription {
  String? type;
  int? minLength;
  int? maxLength;

  TicketDescription({this.type, this.minLength, this.maxLength});

  factory TicketDescription.fromJson(Map<String, dynamic> json) {
    return _$TicketDescriptionFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TicketDescriptionToJson(this);
}
