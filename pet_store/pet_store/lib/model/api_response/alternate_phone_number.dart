import 'package:json_annotation/json_annotation.dart';

part 'alternate_phone_number.g.dart';

@JsonSerializable()
class AlternatePhoneNumber {
  String? type;

  AlternatePhoneNumber({this.type});

  factory AlternatePhoneNumber.fromJson(Map<String, dynamic> json) {
    return _$AlternatePhoneNumberFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AlternatePhoneNumberToJson(this);
}
