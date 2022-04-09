import 'package:json_annotation/json_annotation.dart';

import 'properties.dart';

part 'extended_warranty_history_dto.g.dart';

@JsonSerializable()
class ExtendedWarrantyHistoryDto {
  String? type;
  Properties? properties;
  String? title;

  ExtendedWarrantyHistoryDto({this.type, this.properties, this.title});

  factory ExtendedWarrantyHistoryDto.fromJson(Map<String, dynamic> json) {
    return _$ExtendedWarrantyHistoryDtoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ExtendedWarrantyHistoryDtoToJson(this);
}
