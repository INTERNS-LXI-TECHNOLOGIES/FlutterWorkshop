import 'package:json_annotation/json_annotation.dart';

part 'correct_answer.g.dart';

@JsonSerializable()
class CorrectAnswer {
  String? type;

  CorrectAnswer({this.type});

  factory CorrectAnswer.fromJson(Map<String, dynamic> json) {
    return _$CorrectAnswerFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CorrectAnswerToJson(this);
}
