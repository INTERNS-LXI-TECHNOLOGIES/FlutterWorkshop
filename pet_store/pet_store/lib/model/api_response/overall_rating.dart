import 'package:json_annotation/json_annotation.dart';

part 'overall_rating.g.dart';

@JsonSerializable()
class OverallRating {
  String? type;
  String? format;

  OverallRating({this.type, this.format});

  factory OverallRating.fromJson(Map<String, dynamic> json) {
    return _$OverallRatingFromJson(json);
  }

  Map<String, dynamic> toJson() => _$OverallRatingToJson(this);
}
