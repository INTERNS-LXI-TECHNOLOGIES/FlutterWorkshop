import 'package:json_annotation/json_annotation.dart';

part 'pin_code.g.dart';

@JsonSerializable()
class PinCode {
  String? type;

  PinCode({this.type});

  factory PinCode.fromJson(Map<String, dynamic> json) {
    return _$PinCodeFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PinCodeToJson(this);
}
