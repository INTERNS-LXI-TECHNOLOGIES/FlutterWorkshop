import 'package:json_annotation/json_annotation.dart';

part 'question_id.g.dart';

@JsonSerializable()
class QuestionId {
  String? type;
  String? format;

  QuestionId({this.type, this.format});

  factory QuestionId.fromJson(Map<String, dynamic> json) {
    return _$QuestionIdFromJson(json);
  }

  Map<String, dynamic> toJson() => _$QuestionIdToJson(this);
}
