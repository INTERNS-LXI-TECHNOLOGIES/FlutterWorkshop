import 'package:json_annotation/json_annotation.dart';

part 'alternate_phone_number_one.g.dart';

@JsonSerializable()
class AlternatePhoneNumberOne {
  String? type;
  int? minLength;
  int? maxLength;
  String? pattern;

  AlternatePhoneNumberOne({
    this.type,
    this.minLength,
    this.maxLength,
    this.pattern,
  });

  factory AlternatePhoneNumberOne.fromJson(Map<String, dynamic> json) {
    return _$AlternatePhoneNumberOneFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AlternatePhoneNumberOneToJson(this);
}
