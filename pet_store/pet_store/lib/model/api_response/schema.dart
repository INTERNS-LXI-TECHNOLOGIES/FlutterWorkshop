import 'package:json_annotation/json_annotation.dart';

part 'schema.g.dart';

@JsonSerializable()
class Schema {
  @JsonKey(name: '$ref')
  String? ref;

  Schema({this.ref});

  factory Schema.fromJson(Map<String, dynamic> json) {
    return _$SchemaFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SchemaToJson(this);
}
