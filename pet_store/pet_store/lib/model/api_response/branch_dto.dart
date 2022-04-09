import 'package:json_annotation/json_annotation.dart';

import 'properties.dart';

part 'branch_dto.g.dart';

@JsonSerializable()
class BranchDto {
  String? type;
  Properties? properties;
  String? title;

  BranchDto({this.type, this.properties, this.title});

  factory BranchDto.fromJson(Map<String, dynamic> json) {
    return _$BranchDtoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$BranchDtoToJson(this);
}
