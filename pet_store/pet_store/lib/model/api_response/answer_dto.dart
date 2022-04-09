import 'package:json_annotation/json_annotation.dart';

import 'properties.dart';

part 'answer_dto.g.dart';

@JsonSerializable()
class AnswerDto {
  String? type;
  Properties? properties;
  String? title;

  AnswerDto({this.type, this.properties, this.title});

  factory AnswerDto.fromJson(Map<String, dynamic> json) {
    return _$AnswerDtoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AnswerDtoToJson(this);
}
