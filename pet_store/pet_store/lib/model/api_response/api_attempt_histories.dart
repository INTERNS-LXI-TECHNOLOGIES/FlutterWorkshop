import 'package:json_annotation/json_annotation.dart';

import 'get.dart';
import 'post.dart';
import 'put.dart';

part 'api_attempt_histories.g.dart';

@JsonSerializable()
class ApiAttemptHistories {
  @JsonKey(name: 'get')
  Get? apiAttemptHistoriesGet;
  Post? post;
  Put? put;

  ApiAttemptHistories({this.apiAttemptHistoriesGet, this.post, this.put});

  factory ApiAttemptHistories.fromJson(Map<String, dynamic> json) {
    return _$ApiAttemptHistoriesFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApiAttemptHistoriesToJson(this);
}
