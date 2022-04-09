import 'package:json_annotation/json_annotation.dart';

part 'promotional_message_id.g.dart';

@JsonSerializable()
class PromotionalMessageId {
  String? type;
  String? format;

  PromotionalMessageId({this.type, this.format});

  factory PromotionalMessageId.fromJson(Map<String, dynamic> json) {
    return _$PromotionalMessageIdFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PromotionalMessageIdToJson(this);
}
