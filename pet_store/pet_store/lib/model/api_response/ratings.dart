import 'package:json_annotation/json_annotation.dart';

import 'items.dart';

part 'ratings.g.dart';

@JsonSerializable()
class Ratings {
  String? type;
  Items? items;

  Ratings({this.type, this.items});

  factory Ratings.fromJson(Map<String, dynamic> json) {
    return _$RatingsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$RatingsToJson(this);
}
