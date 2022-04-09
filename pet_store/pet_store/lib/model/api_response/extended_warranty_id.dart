import 'package:json_annotation/json_annotation.dart';

part 'extended_warranty_id.g.dart';

@JsonSerializable()
class ExtendedWarrantyId {
  String? type;
  String? format;

  ExtendedWarrantyId({this.type, this.format});

  factory ExtendedWarrantyId.fromJson(Map<String, dynamic> json) {
    return _$ExtendedWarrantyIdFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ExtendedWarrantyIdToJson(this);
}
