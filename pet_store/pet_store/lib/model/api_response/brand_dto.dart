import 'package:json_annotation/json_annotation.dart';

import 'properties.dart';

part 'brand_dto.g.dart';

@JsonSerializable()
class BrandDto {
  String? type;
  Properties? properties;
  String? title;

  BrandDto({this.type, this.properties, this.title});

  factory BrandDto.fromJson(Map<String, dynamic> json) {
    return _$BrandDtoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$BrandDtoToJson(this);
}
