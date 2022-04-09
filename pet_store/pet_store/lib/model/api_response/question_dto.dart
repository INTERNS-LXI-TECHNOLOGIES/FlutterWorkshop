import 'package:json_annotation/json_annotation.dart';

import 'properties.dart';

part 'question_dto.g.dart';

@JsonSerializable()
class QuestionDto {
  String? type;
  Properties? properties;
  String? title;

  QuestionDto({this.type, this.properties, this.title});

  factory QuestionDto.fromJson(Map<String, dynamic> json) {
    return _$QuestionDtoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$QuestionDtoToJson(this);
}
