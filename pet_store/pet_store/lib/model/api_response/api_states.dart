import 'package:json_annotation/json_annotation.dart';

import 'get.dart';
import 'post.dart';
import 'put.dart';

part 'api_states.g.dart';

@JsonSerializable()
class ApiStates {
  @JsonKey(name: 'get')
  Get? apiStatesGet;
  Post? post;
  Put? put;

  ApiStates({this.apiStatesGet, this.post, this.put});

  factory ApiStates.fromJson(Map<String, dynamic> json) {
    return _$ApiStatesFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApiStatesToJson(this);
}
