import 'package:json_annotation/json_annotation.dart';

import 'properties.dart';

part 'ticket_history_dto.g.dart';

@JsonSerializable()
class TicketHistoryDto {
  String? type;
  List<String>? required;
  Properties? properties;
  String? title;

  TicketHistoryDto({this.type, this.required, this.properties, this.title});

  factory TicketHistoryDto.fromJson(Map<String, dynamic> json) {
    return _$TicketHistoryDtoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TicketHistoryDtoToJson(this);
}
