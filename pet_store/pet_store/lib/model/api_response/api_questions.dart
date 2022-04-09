import 'package:json_annotation/json_annotation.dart';

import 'get.dart';
import 'post.dart';
import 'put.dart';

part 'api_questions.g.dart';

@JsonSerializable()
class ApiQuestions {
  @JsonKey(name: 'get')
  Get? apiQuestionsGet;
  Post? post;
  Put? put;

  ApiQuestions({this.apiQuestionsGet, this.post, this.put});

  factory ApiQuestions.fromJson(Map<String, dynamic> json) {
    return _$ApiQuestionsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApiQuestionsToJson(this);
}
