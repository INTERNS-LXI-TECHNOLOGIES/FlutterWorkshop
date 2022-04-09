import 'package:json_annotation/json_annotation.dart';

import 'get.dart';
import 'post.dart';
import 'put.dart';

part 'api_job_types.g.dart';

@JsonSerializable()
class ApiJobTypes {
  @JsonKey(name: 'get')
  Get? apiJobTypesGet;
  Post? post;
  Put? put;

  ApiJobTypes({this.apiJobTypesGet, this.post, this.put});

  factory ApiJobTypes.fromJson(Map<String, dynamic> json) {
    return _$ApiJobTypesFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApiJobTypesToJson(this);
}
