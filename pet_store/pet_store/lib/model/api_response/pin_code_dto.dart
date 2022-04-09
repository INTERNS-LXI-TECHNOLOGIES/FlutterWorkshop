import 'package:json_annotation/json_annotation.dart';

import 'properties.dart';

part 'pin_code_dto.g.dart';

@JsonSerializable()
class PinCodeDto {
  String? type;
  Properties? properties;
  String? title;

  PinCodeDto({this.type, this.properties, this.title});

  factory PinCodeDto.fromJson(Map<String, dynamic> json) {
    return _$PinCodeDtoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PinCodeDtoToJson(this);
}
