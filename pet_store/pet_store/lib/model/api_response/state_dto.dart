import 'package:json_annotation/json_annotation.dart';

import 'properties.dart';

part 'state_dto.g.dart';

@JsonSerializable()
class StateDto {
  String? type;
  Properties? properties;
  String? title;

  StateDto({this.type, this.properties, this.title});

  factory StateDto.fromJson(Map<String, dynamic> json) {
    return _$StateDtoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$StateDtoToJson(this);
}
