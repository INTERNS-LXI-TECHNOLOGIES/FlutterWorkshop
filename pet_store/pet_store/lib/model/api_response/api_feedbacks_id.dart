import 'package:json_annotation/json_annotation.dart';

import 'delete.dart';
import 'get.dart';

part 'api_feedbacks_id.g.dart';

@JsonSerializable()
class ApiFeedbacksId {
  @JsonKey(name: 'get')
  Get? apiFeedbacksIdGet;
  Delete? delete;

  ApiFeedbacksId({this.apiFeedbacksIdGet, this.delete});

  factory ApiFeedbacksId.fromJson(Map<String, dynamic> json) {
    return _$ApiFeedbacksIdFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApiFeedbacksIdToJson(this);
}
