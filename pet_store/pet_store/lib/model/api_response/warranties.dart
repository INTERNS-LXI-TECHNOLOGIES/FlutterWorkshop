import 'package:json_annotation/json_annotation.dart';

import 'items.dart';

part 'warranties.g.dart';

@JsonSerializable()
class Warranties {
  String? type;
  Items? items;

  Warranties({this.type, this.items});

  factory Warranties.fromJson(Map<String, dynamic> json) {
    return _$WarrantiesFromJson(json);
  }

  Map<String, dynamic> toJson() => _$WarrantiesToJson(this);
}
