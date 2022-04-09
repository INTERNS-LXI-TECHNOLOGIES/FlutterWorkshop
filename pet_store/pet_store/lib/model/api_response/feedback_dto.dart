import 'package:json_annotation/json_annotation.dart';

import 'properties.dart';

part 'feedback_dto.g.dart';

@JsonSerializable()
class FeedbackDto {
  String? type;
  Properties? properties;
  String? title;

  FeedbackDto({this.type, this.properties, this.title});

  factory FeedbackDto.fromJson(Map<String, dynamic> json) {
    return _$FeedbackDtoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$FeedbackDtoToJson(this);
}
