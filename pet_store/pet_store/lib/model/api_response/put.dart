import 'package:json_annotation/json_annotation.dart';

import 'parameter.dart';
import 'responses.dart';

part 'put.g.dart';

@JsonSerializable()
class Put {
  List<String>? tags;
  String? summary;
  String? operationId;
  List<String>? consumes;
  List<String>? produces;
  List<Parameter>? parameters;
  Responses? responses;
  bool? deprecated;

  Put({
    this.tags,
    this.summary,
    this.operationId,
    this.consumes,
    this.produces,
    this.parameters,
    this.responses,
    this.deprecated,
  });

  factory Put.fromJson(Map<String, dynamic> json) => _$PutFromJson(json);

  Map<String, dynamic> toJson() => _$PutToJson(this);
}
