import 'package:json_annotation/json_annotation.dart';

import 'schema.dart';

part 'parameter.g.dart';

@JsonSerializable()
class Parameter {
  @JsonKey(name: 'in')
  String? parameterIn;
  String? name;
  String? description;
  bool? required;
  Schema? schema;

  Parameter({
    this.parameterIn,
    this.name,
    this.description,
    this.required,
    this.schema,
  });

  factory Parameter.fromJson(Map<String, dynamic> json) {
    return _$ParameterFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ParameterToJson(this);
}
