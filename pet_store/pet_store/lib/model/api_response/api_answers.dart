import 'package:json_annotation/json_annotation.dart';

import 'get.dart';
import 'post.dart';
import 'put.dart';

part 'api_answers.g.dart';

@JsonSerializable()
class ApiAnswers {
  @JsonKey(name: 'get')
  Get? apiAnswersGet;
  Post? post;
  Put? put;

  ApiAnswers({this.apiAnswersGet, this.post, this.put});

  factory ApiAnswers.fromJson(Map<String, dynamic> json) {
    return _$ApiAnswersFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApiAnswersToJson(this);
}
