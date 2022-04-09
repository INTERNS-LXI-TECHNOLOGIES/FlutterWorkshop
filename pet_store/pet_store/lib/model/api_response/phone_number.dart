import 'package:json_annotation/json_annotation.dart';

part 'phone_number.g.dart';

@JsonSerializable()
class PhoneNumber {
  String? type;
  String? pattern;

  PhoneNumber({this.type, this.pattern});

  factory PhoneNumber.fromJson(Map<String, dynamic> json) {
    return _$PhoneNumberFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PhoneNumberToJson(this);
}
