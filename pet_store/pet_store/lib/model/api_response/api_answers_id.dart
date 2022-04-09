import 'package:json_annotation/json_annotation.dart';

import 'delete.dart';
import 'get.dart';

part 'api_answers_id.g.dart';

@JsonSerializable()
class ApiAnswersId {
  @JsonKey(name: 'get')
  Get? apiAnswersIdGet;
  Delete? delete;

  ApiAnswersId({this.apiAnswersIdGet, this.delete});

  factory ApiAnswersId.fromJson(Map<String, dynamic> json) {
    return _$ApiAnswersIdFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApiAnswersIdToJson(this);
}
