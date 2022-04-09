import 'package:json_annotation/json_annotation.dart';

import 'properties.dart';

part 'warranty_history_dto.g.dart';

@JsonSerializable()
class WarrantyHistoryDto {
  String? type;
  Properties? properties;
  String? title;

  WarrantyHistoryDto({this.type, this.properties, this.title});

  factory WarrantyHistoryDto.fromJson(Map<String, dynamic> json) {
    return _$WarrantyHistoryDtoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$WarrantyHistoryDtoToJson(this);
}
