import 'package:json_annotation/json_annotation.dart';

part 'phone_verified.g.dart';

@JsonSerializable()
class PhoneVerified {
  String? type;

  PhoneVerified({this.type});

  factory PhoneVerified.fromJson(Map<String, dynamic> json) {
    return _$PhoneVerifiedFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PhoneVerifiedToJson(this);
}
