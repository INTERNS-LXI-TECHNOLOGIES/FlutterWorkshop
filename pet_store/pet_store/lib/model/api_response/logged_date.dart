import 'package:json_annotation/json_annotation.dart';

part 'logged_date.g.dart';

@JsonSerializable()
class LoggedDate {
  String? type;
  String? format;

  LoggedDate({this.type, this.format});

  factory LoggedDate.fromJson(Map<String, dynamic> json) {
    return _$LoggedDateFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LoggedDateToJson(this);
}
