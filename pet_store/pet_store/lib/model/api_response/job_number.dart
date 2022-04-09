import 'package:json_annotation/json_annotation.dart';

part 'job_number.g.dart';

@JsonSerializable()
class JobNumber {
  String? type;
  String? pattern;

  JobNumber({this.type, this.pattern});

  factory JobNumber.fromJson(Map<String, dynamic> json) {
    return _$JobNumberFromJson(json);
  }

  Map<String, dynamic> toJson() => _$JobNumberToJson(this);
}
