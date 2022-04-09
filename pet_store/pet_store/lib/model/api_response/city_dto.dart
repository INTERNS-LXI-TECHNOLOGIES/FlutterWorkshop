import 'package:json_annotation/json_annotation.dart';

import 'properties.dart';

part 'city_dto.g.dart';

@JsonSerializable()
class CityDto {
  String? type;
  Properties? properties;
  String? title;

  CityDto({this.type, this.properties, this.title});

  factory CityDto.fromJson(Map<String, dynamic> json) {
    return _$CityDtoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CityDtoToJson(this);
}
