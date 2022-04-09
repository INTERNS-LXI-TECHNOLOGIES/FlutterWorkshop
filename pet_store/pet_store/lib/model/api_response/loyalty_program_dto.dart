import 'package:json_annotation/json_annotation.dart';

import 'properties.dart';

part 'loyalty_program_dto.g.dart';

@JsonSerializable()
class LoyaltyProgramDto {
  String? type;
  Properties? properties;
  String? title;

  LoyaltyProgramDto({this.type, this.properties, this.title});

  factory LoyaltyProgramDto.fromJson(Map<String, dynamic> json) {
    return _$LoyaltyProgramDtoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LoyaltyProgramDtoToJson(this);
}
