import 'package:json_annotation/json_annotation.dart';

part 'reset_date.g.dart';

@JsonSerializable()
class ResetDate {
  String? type;
  String? format;

  ResetDate({this.type, this.format});

  factory ResetDate.fromJson(Map<String, dynamic> json) {
    return _$ResetDateFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ResetDateToJson(this);
}
