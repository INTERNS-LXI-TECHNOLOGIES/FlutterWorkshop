import 'package:json_annotation/json_annotation.dart';

import 'get.dart';
import 'post.dart';
import 'put.dart';

part 'api_safety_tips.g.dart';

@JsonSerializable()
class ApiSafetyTips {
  @JsonKey(name: 'get')
  Get? apiSafetyTipsGet;
  Post? post;
  Put? put;

  ApiSafetyTips({this.apiSafetyTipsGet, this.post, this.put});

  factory ApiSafetyTips.fromJson(Map<String, dynamic> json) {
    return _$ApiSafetyTipsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApiSafetyTipsToJson(this);
}
