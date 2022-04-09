import 'package:json_annotation/json_annotation.dart';

import 'delete.dart';
import 'get.dart';

part 'api_attempt_histories_id.g.dart';

@JsonSerializable()
class ApiAttemptHistoriesId {
  @JsonKey(name: 'get')
  Get? apiAttemptHistoriesIdGet;
  Delete? delete;

  ApiAttemptHistoriesId({this.apiAttemptHistoriesIdGet, this.delete});

  factory ApiAttemptHistoriesId.fromJson(Map<String, dynamic> json) {
    return _$ApiAttemptHistoriesIdFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApiAttemptHistoriesIdToJson(this);
}
