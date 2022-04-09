import 'package:json_annotation/json_annotation.dart';

import 'delete.dart';
import 'get.dart';

part 'api_jobs_id.g.dart';

@JsonSerializable()
class ApiJobsId {
  @JsonKey(name: 'get')
  Get? apiJobsIdGet;
  Delete? delete;

  ApiJobsId({this.apiJobsIdGet, this.delete});

  factory ApiJobsId.fromJson(Map<String, dynamic> json) {
    return _$ApiJobsIdFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApiJobsIdToJson(this);
}
