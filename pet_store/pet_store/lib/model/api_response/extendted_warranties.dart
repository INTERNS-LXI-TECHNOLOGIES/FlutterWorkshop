import 'package:json_annotation/json_annotation.dart';

import 'items.dart';

part 'extendted_warranties.g.dart';

@JsonSerializable()
class ExtendtedWarranties {
  String? type;
  Items? items;

  ExtendtedWarranties({this.type, this.items});

  factory ExtendtedWarranties.fromJson(Map<String, dynamic> json) {
    return _$ExtendtedWarrantiesFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ExtendtedWarrantiesToJson(this);
}
