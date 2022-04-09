import 'package:json_annotation/json_annotation.dart';

part 'total_feedbacks.g.dart';

@JsonSerializable()
class TotalFeedbacks {
  String? type;
  String? format;

  TotalFeedbacks({this.type, this.format});

  factory TotalFeedbacks.fromJson(Map<String, dynamic> json) {
    return _$TotalFeedbacksFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TotalFeedbacksToJson(this);
}
