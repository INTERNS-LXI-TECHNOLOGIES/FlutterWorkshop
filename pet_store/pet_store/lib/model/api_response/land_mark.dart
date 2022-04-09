import 'package:json_annotation/json_annotation.dart';

part 'land_mark.g.dart';

@JsonSerializable()
class LandMark {
  String? type;
  int? minLength;
  int? maxLength;

  LandMark({this.type, this.minLength, this.maxLength});

  factory LandMark.fromJson(Map<String, dynamic> json) {
    return _$LandMarkFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LandMarkToJson(this);
}
