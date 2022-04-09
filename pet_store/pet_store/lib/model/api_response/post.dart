import 'package:json_annotation/json_annotation.dart';

import 'parameter.dart';
import 'responses.dart';

part 'post.g.dart';

@JsonSerializable()
class Post {
  List<String>? tags;
  String? summary;
  String? operationId;
  List<String>? consumes;
  List<String>? produces;
  List<Parameter>? parameters;
  Responses? responses;
  bool? deprecated;

  Post({
    this.tags,
    this.summary,
    this.operationId,
    this.consumes,
    this.produces,
    this.parameters,
    this.responses,
    this.deprecated,
  });

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);

  Map<String, dynamic> toJson() => _$PostToJson(this);
}
