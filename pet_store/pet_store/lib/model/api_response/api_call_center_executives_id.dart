import 'package:json_annotation/json_annotation.dart';

import 'delete.dart';
import 'get.dart';

part 'api_call_center_executives_id.g.dart';

@JsonSerializable()
class ApiCallCenterExecutivesId {
  @JsonKey(name: 'get')
  Get? apiCallCenterExecutivesIdGet;
  Delete? delete;

  ApiCallCenterExecutivesId({
    this.apiCallCenterExecutivesIdGet,
    this.delete,
  });

  factory ApiCallCenterExecutivesId.fromJson(Map<String, dynamic> json) {
    return _$ApiCallCenterExecutivesIdFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApiCallCenterExecutivesIdToJson(this);
}
