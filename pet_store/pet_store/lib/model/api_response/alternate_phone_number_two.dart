import 'package:json_annotation/json_annotation.dart';

part 'alternate_phone_number_two.g.dart';

@JsonSerializable()
class AlternatePhoneNumberTwo {
  String? type;
  int? minLength;
  int? maxLength;
  String? pattern;

  AlternatePhoneNumberTwo({
    this.type,
    this.minLength,
    this.maxLength,
    this.pattern,
  });

  factory AlternatePhoneNumberTwo.fromJson(Map<String, dynamic> json) {
    return _$AlternatePhoneNumberTwoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AlternatePhoneNumberTwoToJson(this);
}
