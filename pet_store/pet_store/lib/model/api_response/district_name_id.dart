import 'package:json_annotation/json_annotation.dart';

part 'district_name_id.g.dart';

@JsonSerializable()
class DistrictNameId {
  String? type;
  String? format;

  DistrictNameId({this.type, this.format});

  factory DistrictNameId.fromJson(Map<String, dynamic> json) {
    return _$DistrictNameIdFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DistrictNameIdToJson(this);
}
