import 'package:json_annotation/json_annotation.dart';

part 'period_in_months.g.dart';

@JsonSerializable()
class PeriodInMonths {
  String? type;
  String? format;

  PeriodInMonths({this.type, this.format});

  factory PeriodInMonths.fromJson(Map<String, dynamic> json) {
    return _$PeriodInMonthsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PeriodInMonthsToJson(this);
}
