import 'package:json_annotation/json_annotation.dart';

part 'first_name.g.dart';

@JsonSerializable()
class FirstName {
  String? type;
  int? minLength;
  int? maxLength;

  FirstName({this.type, this.minLength, this.maxLength});

  factory FirstName.fromJson(Map<String, dynamic> json) {
    return _$FirstNameFromJson(json);
  }

  Map<String, dynamic> toJson() => _$FirstNameToJson(this);
}
