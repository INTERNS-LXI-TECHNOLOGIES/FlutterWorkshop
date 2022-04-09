import 'package:json_annotation/json_annotation.dart';

part 'brand_id.g.dart';

@JsonSerializable()
class BrandId {
  String? type;
  String? format;

  BrandId({this.type, this.format});

  factory BrandId.fromJson(Map<String, dynamic> json) {
    return _$BrandIdFromJson(json);
  }

  Map<String, dynamic> toJson() => _$BrandIdToJson(this);
}
