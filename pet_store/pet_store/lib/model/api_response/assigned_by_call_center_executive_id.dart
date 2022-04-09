import 'package:json_annotation/json_annotation.dart';

part 'assigned_by_call_center_executive_id.g.dart';

@JsonSerializable()
class AssignedByCallCenterExecutiveId {
  String? type;
  String? format;

  AssignedByCallCenterExecutiveId({this.type, this.format});

  factory AssignedByCallCenterExecutiveId.fromJson(Map<String, dynamic> json) {
    return _$AssignedByCallCenterExecutiveIdFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$AssignedByCallCenterExecutiveIdToJson(this);
  }
}
