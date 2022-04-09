import 'package:json_annotation/json_annotation.dart';

import 'properties.dart';

part 'extended_warranty_dto.g.dart';

@JsonSerializable()
class ExtendedWarrantyDto {
  String? type;
  List<String>? required;
  Properties? properties;
  String? title;

  ExtendedWarrantyDto({
    this.type,
    this.required,
    this.properties,
    this.title,
  });

  factory ExtendedWarrantyDto.fromJson(Map<String, dynamic> json) {
    return _$ExtendedWarrantyDtoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ExtendedWarrantyDtoToJson(this);
}
