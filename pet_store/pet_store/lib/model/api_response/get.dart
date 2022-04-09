import 'package:json_annotation/json_annotation.dart';

import 'responses.dart';

part 'get.g.dart';

@JsonSerializable()
class Get {
  List<String>? tags;
  String? summary;
  String? operationId;
  List<String>? produces;
  Responses? responses;
  bool? deprecated;

  Get({
    this.tags,
    this.summary,
    this.operationId,
    this.produces,
    this.responses,
    this.deprecated,
  });

  factory Get.fromJson(Map<String, dynamic> json) => _$GetFromJson(json);

  Map<String, dynamic> toJson() => _$GetToJson(this);
}
