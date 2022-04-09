import 'package:json_annotation/json_annotation.dart';

import 'properties.dart';

part 'warranty_dto.g.dart';

@JsonSerializable()
class WarrantyDto {
  String? type;
  List<String>? required;
  Properties? properties;
  String? title;

  WarrantyDto({this.type, this.required, this.properties, this.title});

  factory WarrantyDto.fromJson(Map<String, dynamic> json) {
    return _$WarrantyDtoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$WarrantyDtoToJson(this);
}
