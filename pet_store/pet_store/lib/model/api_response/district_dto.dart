import 'package:json_annotation/json_annotation.dart';

import 'properties.dart';

part 'district_dto.g.dart';

@JsonSerializable()
class DistrictDto {
  String? type;
  Properties? properties;
  String? title;

  DistrictDto({this.type, this.properties, this.title});

  factory DistrictDto.fromJson(Map<String, dynamic> json) {
    return _$DistrictDtoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DistrictDtoToJson(this);
}
