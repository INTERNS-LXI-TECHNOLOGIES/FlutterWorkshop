import 'package:json_annotation/json_annotation.dart';

part 'serial_number.g.dart';

@JsonSerializable()
class SerialNumber {
  String? type;

  SerialNumber({this.type});

  factory SerialNumber.fromJson(Map<String, dynamic> json) {
    return _$SerialNumberFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SerialNumberToJson(this);
}
