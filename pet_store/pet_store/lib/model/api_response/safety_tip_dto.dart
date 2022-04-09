import 'package:json_annotation/json_annotation.dart';

import 'properties.dart';

part 'safety_tip_dto.g.dart';

@JsonSerializable()
class SafetyTipDto {
  String? type;
  Properties? properties;
  String? title;

  SafetyTipDto({this.type, this.properties, this.title});

  factory SafetyTipDto.fromJson(Map<String, dynamic> json) {
    return _$SafetyTipDtoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SafetyTipDtoToJson(this);
}
