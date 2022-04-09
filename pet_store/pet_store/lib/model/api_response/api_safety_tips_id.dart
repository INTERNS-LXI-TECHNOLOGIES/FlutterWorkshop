import 'package:json_annotation/json_annotation.dart';

import 'delete.dart';
import 'get.dart';

part 'api_safety_tips_id.g.dart';

@JsonSerializable()
class ApiSafetyTipsId {
  @JsonKey(name: 'get')
  Get? apiSafetyTipsIdGet;
  Delete? delete;

  ApiSafetyTipsId({this.apiSafetyTipsIdGet, this.delete});

  factory ApiSafetyTipsId.fromJson(Map<String, dynamic> json) {
    return _$ApiSafetyTipsIdFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApiSafetyTipsIdToJson(this);
}
