import 'package:json_annotation/json_annotation.dart';

part 'activated.g.dart';

@JsonSerializable()
class Activated {
  String? type;

  Activated({this.type});

  factory Activated.fromJson(Map<String, dynamic> json) {
    return _$ActivatedFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ActivatedToJson(this);
}
