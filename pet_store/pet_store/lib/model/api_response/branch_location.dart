import 'package:json_annotation/json_annotation.dart';

part 'branch_location.g.dart';

@JsonSerializable()
class BranchLocation {
  String? type;

  BranchLocation({this.type});

  factory BranchLocation.fromJson(Map<String, dynamic> json) {
    return _$BranchLocationFromJson(json);
  }

  Map<String, dynamic> toJson() => _$BranchLocationToJson(this);
}
