import 'package:json_annotation/json_annotation.dart';

import 'parameter.dart';
import 'responses.dart';

part 'delete.g.dart';

@JsonSerializable()
class Delete {
  List<String>? tags;
  String? summary;
  String? operationId;
  List<String>? produces;
  List<Parameter>? parameters;
  Responses? responses;
  bool? deprecated;

  Delete({
    this.tags,
    this.summary,
    this.operationId,
    this.produces,
    this.parameters,
    this.responses,
    this.deprecated,
  });

  factory Delete.fromJson(Map<String, dynamic> json) {
    return _$DeleteFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DeleteToJson(this);
}
