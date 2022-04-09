import 'package:json_annotation/json_annotation.dart';

part 'pin_code_id.g.dart';

@JsonSerializable()
class PinCodeId {
  String? type;
  String? format;

  PinCodeId({this.type, this.format});

  factory PinCodeId.fromJson(Map<String, dynamic> json) {
    return _$PinCodeIdFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PinCodeIdToJson(this);
}
