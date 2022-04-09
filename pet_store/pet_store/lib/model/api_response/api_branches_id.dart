import 'package:json_annotation/json_annotation.dart';

import 'delete.dart';
import 'get.dart';

part 'api_branches_id.g.dart';

@JsonSerializable()
class ApiBranchesId {
  @JsonKey(name: 'get')
  Get? apiBranchesIdGet;
  Delete? delete;

  ApiBranchesId({this.apiBranchesIdGet, this.delete});

  factory ApiBranchesId.fromJson(Map<String, dynamic> json) {
    return _$ApiBranchesIdFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApiBranchesIdToJson(this);
}
