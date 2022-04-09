import 'package:json_annotation/json_annotation.dart';

part 'points_collected.g.dart';

@JsonSerializable()
class PointsCollected {
  String? type;
  String? format;

  PointsCollected({this.type, this.format});

  factory PointsCollected.fromJson(Map<String, dynamic> json) {
    return _$PointsCollectedFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PointsCollectedToJson(this);
}
