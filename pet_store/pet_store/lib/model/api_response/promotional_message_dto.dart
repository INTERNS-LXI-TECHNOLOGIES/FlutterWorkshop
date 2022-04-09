import 'package:json_annotation/json_annotation.dart';

import 'properties.dart';

part 'promotional_message_dto.g.dart';

@JsonSerializable()
class PromotionalMessageDto {
  String? type;
  Properties? properties;
  String? title;

  PromotionalMessageDto({this.type, this.properties, this.title});

  factory PromotionalMessageDto.fromJson(Map<String, dynamic> json) {
    return _$PromotionalMessageDtoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PromotionalMessageDtoToJson(this);
}
