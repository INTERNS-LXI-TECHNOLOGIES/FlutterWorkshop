import 'package:json_annotation/json_annotation.dart';

part 'warranty_id.g.dart';

@JsonSerializable()
class WarrantyId {
  String? type;
  String? format;

  WarrantyId({this.type, this.format});

  factory WarrantyId.fromJson(Map<String, dynamic> json) {
    return _$WarrantyIdFromJson(json);
  }

  Map<String, dynamic> toJson() => _$WarrantyIdToJson(this);
}
