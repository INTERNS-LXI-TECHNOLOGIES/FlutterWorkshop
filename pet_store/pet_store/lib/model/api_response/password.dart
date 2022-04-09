import 'package:json_annotation/json_annotation.dart';

part 'password.g.dart';

@JsonSerializable()
class Password {
  String? type;
  int? minLength;
  int? maxLength;

  Password({this.type, this.minLength, this.maxLength});

  factory Password.fromJson(Map<String, dynamic> json) {
    return _$PasswordFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PasswordToJson(this);
}
