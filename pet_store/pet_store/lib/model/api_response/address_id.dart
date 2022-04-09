import 'package:json_annotation/json_annotation.dart';

part 'address_id.g.dart';

@JsonSerializable()
class AddressId {
  String? type;
  String? format;

  AddressId({this.type, this.format});

  factory AddressId.fromJson(Map<String, dynamic> json) {
    return _$AddressIdFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AddressIdToJson(this);
}
