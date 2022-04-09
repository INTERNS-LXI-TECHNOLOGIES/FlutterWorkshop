import 'package:json_annotation/json_annotation.dart';

import 'properties.dart';

part 'message_dto.g.dart';

@JsonSerializable()
class MessageDto {
  String? type;
  Properties? properties;
  String? title;

  MessageDto({this.type, this.properties, this.title});

  factory MessageDto.fromJson(Map<String, dynamic> json) {
    return _$MessageDtoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$MessageDtoToJson(this);
}
