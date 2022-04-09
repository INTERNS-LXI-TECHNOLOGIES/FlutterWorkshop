import 'package:json_annotation/json_annotation.dart';

part 'login.g.dart';

@JsonSerializable()
class Login {
  String? type;
  int? minLength;
  int? maxLength;
  String? pattern;

  Login({this.type, this.minLength, this.maxLength, this.pattern});

  factory Login.fromJson(Map<String, dynamic> json) => _$LoginFromJson(json);

  Map<String, dynamic> toJson() => _$LoginToJson(this);
}
