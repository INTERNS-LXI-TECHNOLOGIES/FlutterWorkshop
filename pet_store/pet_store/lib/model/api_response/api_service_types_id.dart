import 'package:json_annotation/json_annotation.dart';

import 'delete.dart';
import 'get.dart';

part 'api_service_types_id.g.dart';

@JsonSerializable()
class ApiServiceTypesId {
  @JsonKey(name: 'get')
  Get? apiServiceTypesIdGet;
  Delete? delete;

  ApiServiceTypesId({this.apiServiceTypesIdGet, this.delete});

  factory ApiServiceTypesId.fromJson(Map<String, dynamic> json) {
    return _$ApiServiceTypesIdFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApiServiceTypesIdToJson(this);
}
