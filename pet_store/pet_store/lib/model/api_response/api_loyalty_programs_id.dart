import 'package:json_annotation/json_annotation.dart';

import 'delete.dart';
import 'get.dart';

part 'api_loyalty_programs_id.g.dart';

@JsonSerializable()
class ApiLoyaltyProgramsId {
  @JsonKey(name: 'get')
  Get? apiLoyaltyProgramsIdGet;
  Delete? delete;

  ApiLoyaltyProgramsId({this.apiLoyaltyProgramsIdGet, this.delete});

  factory ApiLoyaltyProgramsId.fromJson(Map<String, dynamic> json) {
    return _$ApiLoyaltyProgramsIdFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApiLoyaltyProgramsIdToJson(this);
}
