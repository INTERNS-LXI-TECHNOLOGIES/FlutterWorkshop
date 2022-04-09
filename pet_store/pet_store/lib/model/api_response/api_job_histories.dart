import 'package:json_annotation/json_annotation.dart';

import 'get.dart';
import 'post.dart';
import 'put.dart';

part 'api_job_histories.g.dart';

@JsonSerializable()
class ApiJobHistories {
  @JsonKey(name: 'get')
  Get? apiJobHistoriesGet;
  Post? post;
  Put? put;

  ApiJobHistories({this.apiJobHistoriesGet, this.post, this.put});

  factory ApiJobHistories.fromJson(Map<String, dynamic> json) {
    return _$ApiJobHistoriesFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApiJobHistoriesToJson(this);
}
