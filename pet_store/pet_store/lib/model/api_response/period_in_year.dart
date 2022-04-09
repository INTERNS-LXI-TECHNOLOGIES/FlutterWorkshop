import 'package:json_annotation/json_annotation.dart';

part 'period_in_year.g.dart';

@JsonSerializable()
class PeriodInYear {
  String? type;
  String? format;

  PeriodInYear({this.type, this.format});

  factory PeriodInYear.fromJson(Map<String, dynamic> json) {
    return _$PeriodInYearFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PeriodInYearToJson(this);
}
