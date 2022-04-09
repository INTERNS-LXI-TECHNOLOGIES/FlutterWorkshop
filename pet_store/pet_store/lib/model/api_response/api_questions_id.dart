import 'package:json_annotation/json_annotation.dart';

import 'delete.dart';
import 'get.dart';

part 'api_questions_id.g.dart';

@JsonSerializable()
class ApiQuestionsId {
  @JsonKey(name: 'get')
  Get? apiQuestionsIdGet;
  Delete? delete;

  ApiQuestionsId({this.apiQuestionsIdGet, this.delete});

  factory ApiQuestionsId.fromJson(Map<String, dynamic> json) {
    return _$ApiQuestionsIdFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApiQuestionsIdToJson(this);
}
