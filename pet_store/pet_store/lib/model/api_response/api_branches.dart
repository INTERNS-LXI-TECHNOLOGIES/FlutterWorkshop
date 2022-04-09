import 'package:json_annotation/json_annotation.dart';

import 'get.dart';
import 'post.dart';
import 'put.dart';

part 'api_branches.g.dart';

@JsonSerializable()
class ApiBranches {
  @JsonKey(name: 'get')
  Get? apiBranchesGet;
  Post? post;
  Put? put;

  ApiBranches({this.apiBranchesGet, this.post, this.put});

  factory ApiBranches.fromJson(Map<String, dynamic> json) {
    return _$ApiBranchesFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApiBranchesToJson(this);
}
