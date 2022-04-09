import 'package:json_annotation/json_annotation.dart';

import 'delete.dart';
import 'get.dart';

part 'api_job_histories_id.g.dart';

@JsonSerializable()
class ApiJobHistoriesId {
  @JsonKey(name: 'get')
  Get? apiJobHistoriesIdGet;
  Delete? delete;

  ApiJobHistoriesId({this.apiJobHistoriesIdGet, this.delete});

  factory ApiJobHistoriesId.fromJson(Map<String, dynamic> json) {
    return _$ApiJobHistoriesIdFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApiJobHistoriesIdToJson(this);
}
