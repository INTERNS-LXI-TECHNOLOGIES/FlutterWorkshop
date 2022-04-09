import 'package:json_annotation/json_annotation.dart';

part 'specification.g.dart';

@JsonSerializable()
class Specification {
  String? type;

  Specification({this.type});

  factory Specification.fromJson(Map<String, dynamic> json) {
    return _$SpecificationFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SpecificationToJson(this);
}
