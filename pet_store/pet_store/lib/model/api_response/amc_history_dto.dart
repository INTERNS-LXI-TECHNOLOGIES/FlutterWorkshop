import 'package:json_annotation/json_annotation.dart';

import 'properties.dart';

part 'amc_history_dto.g.dart';

@JsonSerializable()
class AmcHistoryDto {
  String? type;
  Properties? properties;
  String? title;

  AmcHistoryDto({this.type, this.properties, this.title});

  factory AmcHistoryDto.fromJson(Map<String, dynamic> json) {
    return _$AmcHistoryDtoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AmcHistoryDtoToJson(this);
}
