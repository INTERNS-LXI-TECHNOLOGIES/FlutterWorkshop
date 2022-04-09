import 'package:json_annotation/json_annotation.dart';

part 'district.g.dart';

@JsonSerializable()
class District {
  String? type;
  int? minLength;
  int? maxLength;

  District({this.type, this.minLength, this.maxLength});

  factory District.fromJson(Map<String, dynamic> json) {
    return _$DistrictFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DistrictToJson(this);
}
