import 'package:json_annotation/json_annotation.dart';

import 'get.dart';
import 'post.dart';
import 'put.dart';

part 'api_call_center_executives.g.dart';

@JsonSerializable()
class ApiCallCenterExecutives {
  @JsonKey(name: 'get')
  Get? apiCallCenterExecutivesGet;
  Post? post;
  Put? put;

  ApiCallCenterExecutives({
    this.apiCallCenterExecutivesGet,
    this.post,
    this.put,
  });

  factory ApiCallCenterExecutives.fromJson(Map<String, dynamic> json) {
    return _$ApiCallCenterExecutivesFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApiCallCenterExecutivesToJson(this);
}
