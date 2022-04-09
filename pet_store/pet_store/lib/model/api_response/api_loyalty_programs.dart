import 'package:json_annotation/json_annotation.dart';

import 'get.dart';
import 'post.dart';
import 'put.dart';

part 'api_loyalty_programs.g.dart';

@JsonSerializable()
class ApiLoyaltyPrograms {
  @JsonKey(name: 'get')
  Get? apiLoyaltyProgramsGet;
  Post? post;
  Put? put;

  ApiLoyaltyPrograms({this.apiLoyaltyProgramsGet, this.post, this.put});

  factory ApiLoyaltyPrograms.fromJson(Map<String, dynamic> json) {
    return _$ApiLoyaltyProgramsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApiLoyaltyProgramsToJson(this);
}
