import 'package:json_annotation/json_annotation.dart';

import 'description.dart';
import 'id.dart';
import 'name.dart';
import 'period_in_months.dart';
import 'period_in_year.dart';

part 'properties.g.dart';

@JsonSerializable()
class Properties {
  Description? description;
  Id? id;
  Name? name;
  PeriodInMonths? periodInMonths;
  PeriodInYear? periodInYear;

  Properties({
    this.description,
    this.id,
    this.name,
    this.periodInMonths,
    this.periodInYear,
  });

  factory Properties.fromJson(Map<String, dynamic> json) {
    return _$PropertiesFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PropertiesToJson(this);
}
