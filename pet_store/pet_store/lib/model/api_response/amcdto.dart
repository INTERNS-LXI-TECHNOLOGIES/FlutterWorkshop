import 'package:json_annotation/json_annotation.dart';

import 'properties.dart';

part 'amcdto.g.dart';

@JsonSerializable()
class Amcdto {
  String? type;
  List<String>? required;
  Properties? properties;
  String? title;

  Amcdto({this.type, this.required, this.properties, this.title});

  factory Amcdto.fromJson(Map<String, dynamic> json) {
    return _$AmcdtoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AmcdtoToJson(this);
}
