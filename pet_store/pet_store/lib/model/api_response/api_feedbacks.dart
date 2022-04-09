import 'package:json_annotation/json_annotation.dart';

import 'get.dart';
import 'post.dart';
import 'put.dart';

part 'api_feedbacks.g.dart';

@JsonSerializable()
class ApiFeedbacks {
  @JsonKey(name: 'get')
  Get? apiFeedbacksGet;
  Post? post;
  Put? put;

  ApiFeedbacks({this.apiFeedbacksGet, this.post, this.put});

  factory ApiFeedbacks.fromJson(Map<String, dynamic> json) {
    return _$ApiFeedbacksFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApiFeedbacksToJson(this);
}
