import 'package:json_annotation/json_annotation.dart';

part 'phone_numbers_verified.g.dart';

@JsonSerializable()
class PhoneNumbersVerified {
  String? type;

  PhoneNumbersVerified({this.type});

  factory PhoneNumbersVerified.fromJson(Map<String, dynamic> json) {
    return _$PhoneNumbersVerifiedFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PhoneNumbersVerifiedToJson(this);
}
