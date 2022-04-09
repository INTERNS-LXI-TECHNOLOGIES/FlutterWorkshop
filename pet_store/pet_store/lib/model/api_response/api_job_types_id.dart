import 'package:json_annotation/json_annotation.dart';

import 'delete.dart';
import 'get.dart';

part 'api_job_types_id.g.dart';

@JsonSerializable()
class ApiJobTypesId {
  @JsonKey(name: 'get')
  Get? apiJobTypesIdGet;
  Delete? delete;

  ApiJobTypesId({this.apiJobTypesIdGet, this.delete});

  factory ApiJobTypesId.fromJson(Map<String, dynamic> json) {
    return _$ApiJobTypesIdFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApiJobTypesIdToJson(this);
}
