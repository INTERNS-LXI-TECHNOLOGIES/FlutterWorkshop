import 'package:json_annotation/json_annotation.dart';

import 'properties.dart';

part 'ticket_dto.g.dart';

@JsonSerializable()
class TicketDto {
  String? type;
  List<String>? required;
  Properties? properties;
  String? title;

  TicketDto({this.type, this.required, this.properties, this.title});

  factory TicketDto.fromJson(Map<String, dynamic> json) {
    return _$TicketDtoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TicketDtoToJson(this);
}
