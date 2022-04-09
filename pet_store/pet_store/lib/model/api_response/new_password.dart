import 'package:json_annotation/json_annotation.dart';

part 'new_password.g.dart';

@JsonSerializable()
class NewPassword {
  String? type;

  NewPassword({this.type});

  factory NewPassword.fromJson(Map<String, dynamic> json) {
    return _$NewPasswordFromJson(json);
  }

  Map<String, dynamic> toJson() => _$NewPasswordToJson(this);
}
