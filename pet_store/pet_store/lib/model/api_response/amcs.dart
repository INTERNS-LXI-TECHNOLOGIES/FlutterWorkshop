import 'package:json_annotation/json_annotation.dart';

import 'items.dart';

part 'amcs.g.dart';

@JsonSerializable()
class Amcs {
  String? type;
  Items? items;

  Amcs({this.type, this.items});

  factory Amcs.fromJson(Map<String, dynamic> json) => _$AmcsFromJson(json);

  Map<String, dynamic> toJson() => _$AmcsToJson(this);
}
