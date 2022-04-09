import 'package:json_annotation/json_annotation.dart';

part 'warranty_log.g.dart';

@JsonSerializable()
class WarrantyLog {
  String? type;

  WarrantyLog({this.type});

  factory WarrantyLog.fromJson(Map<String, dynamic> json) {
    return _$WarrantyLogFromJson(json);
  }

  Map<String, dynamic> toJson() => _$WarrantyLogToJson(this);
}
