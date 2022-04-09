import 'package:json_annotation/json_annotation.dart';

part 'geo_location.g.dart';

@JsonSerializable()
class GeoLocation {
  String? type;

  GeoLocation({this.type});

  factory GeoLocation.fromJson(Map<String, dynamic> json) {
    return _$GeoLocationFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GeoLocationToJson(this);
}
