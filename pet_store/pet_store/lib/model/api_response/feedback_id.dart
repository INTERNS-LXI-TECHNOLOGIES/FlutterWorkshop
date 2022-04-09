import 'package:json_annotation/json_annotation.dart';

part 'feedback_id.g.dart';

@JsonSerializable()
class FeedbackId {
  String? type;
  String? format;

  FeedbackId({this.type, this.format});

  factory FeedbackId.fromJson(Map<String, dynamic> json) {
    return _$FeedbackIdFromJson(json);
  }

  Map<String, dynamic> toJson() => _$FeedbackIdToJson(this);
}
