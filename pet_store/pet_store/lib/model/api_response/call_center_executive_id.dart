import 'package:json_annotation/json_annotation.dart';

part 'call_center_executive_id.g.dart';

@JsonSerializable()
class CallCenterExecutiveId {
  String? type;
  String? pattern;

  CallCenterExecutiveId({this.type, this.pattern});

  factory CallCenterExecutiveId.fromJson(Map<String, dynamic> json) {
    return _$CallCenterExecutiveIdFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CallCenterExecutiveIdToJson(this);
}
