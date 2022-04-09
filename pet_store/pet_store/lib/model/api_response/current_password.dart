import 'package:json_annotation/json_annotation.dart';

part 'current_password.g.dart';

@JsonSerializable()
class CurrentPassword {
  String? type;

  CurrentPassword({this.type});

  factory CurrentPassword.fromJson(Map<String, dynamic> json) {
    return _$CurrentPasswordFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CurrentPasswordToJson(this);
}
