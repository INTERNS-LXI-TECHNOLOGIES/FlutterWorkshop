import 'package:json_annotation/json_annotation.dart';

import 'definitions.dart';
import 'info.dart';
import 'paths.dart';
import 'tag.dart';

part 'api_response.g.dart';

@JsonSerializable()
class ApiResponse {
  String? swagger;
  Info? info;
  String? host;
  String? basePath;
  List<Tag>? tags;
  Paths? paths;
  Definitions? definitions;

  ApiResponse({
    this.swagger,
    this.info,
    this.host,
    this.basePath,
    this.tags,
    this.paths,
    this.definitions,
  });

  factory ApiResponse.fromJson(Map<String, dynamic> json) {
    return _$ApiResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApiResponseToJson(this);
}
