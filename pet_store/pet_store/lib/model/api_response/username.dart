import 'package:json_annotation/json_annotation.dart';

part 'username.g.dart';

@JsonSerializable()
class Username {
  String? type;
  int? minLength;
  int? maxLength;

  Username({this.type, this.minLength, this.maxLength});

  factory Username.fromJson(Map<String, dynamic> json) {
    return _$UsernameFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UsernameToJson(this);
}
