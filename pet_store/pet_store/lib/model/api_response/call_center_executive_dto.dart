import 'package:json_annotation/json_annotation.dart';

import 'properties.dart';

part 'call_center_executive_dto.g.dart';

@JsonSerializable()
class CallCenterExecutiveDto {
  String? type;
  List<String>? required;
  Properties? properties;
  String? title;

  CallCenterExecutiveDto({
    this.type,
    this.required,
    this.properties,
    this.title,
  });

  factory CallCenterExecutiveDto.fromJson(Map<String, dynamic> json) {
    return _$CallCenterExecutiveDtoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CallCenterExecutiveDtoToJson(this);
}
