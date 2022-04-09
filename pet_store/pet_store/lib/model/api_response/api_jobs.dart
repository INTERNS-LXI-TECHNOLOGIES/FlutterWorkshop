import 'package:json_annotation/json_annotation.dart';

import 'get.dart';
import 'post.dart';
import 'put.dart';

part 'api_jobs.g.dart';

@JsonSerializable()
class ApiJobs {
  @JsonKey(name: 'get')
  Get? apiJobsGet;
  Post? post;
  Put? put;

  ApiJobs({this.apiJobsGet, this.post, this.put});

  factory ApiJobs.fromJson(Map<String, dynamic> json) {
    return _$ApiJobsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApiJobsToJson(this);
}
