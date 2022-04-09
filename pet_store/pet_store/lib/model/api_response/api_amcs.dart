import 'package:json_annotation/json_annotation.dart';

import 'get.dart';
import 'post.dart';
import 'put.dart';

part 'api_amcs.g.dart';

@JsonSerializable()
class ApiAmcs {
  @JsonKey(name: 'get')
  Get? apiAmcsGet;
  Post? post;
  Put? put;

  ApiAmcs({this.apiAmcsGet, this.post, this.put});

  factory ApiAmcs.fromJson(Map<String, dynamic> json) {
    return _$ApiAmcsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApiAmcsToJson(this);
}
