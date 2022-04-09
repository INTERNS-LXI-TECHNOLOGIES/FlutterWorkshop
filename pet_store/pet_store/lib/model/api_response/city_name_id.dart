import 'package:json_annotation/json_annotation.dart';

part 'city_name_id.g.dart';

@JsonSerializable()
class CityNameId {
  String? type;
  String? format;

  CityNameId({this.type, this.format});

  factory CityNameId.fromJson(Map<String, dynamic> json) {
    return _$CityNameIdFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CityNameIdToJson(this);
}
