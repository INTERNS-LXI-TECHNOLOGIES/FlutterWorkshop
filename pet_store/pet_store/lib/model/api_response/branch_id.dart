import 'package:json_annotation/json_annotation.dart';

part 'branch_id.g.dart';

@JsonSerializable()
class BranchId {
  String? type;
  String? format;

  BranchId({this.type, this.format});

  factory BranchId.fromJson(Map<String, dynamic> json) {
    return _$BranchIdFromJson(json);
  }

  Map<String, dynamic> toJson() => _$BranchIdToJson(this);
}
