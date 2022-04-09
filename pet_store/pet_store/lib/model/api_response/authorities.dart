import 'package:json_annotation/json_annotation.dart';

import 'items.dart';

part 'authorities.g.dart';

@JsonSerializable()
class Authorities {
  String? type;
  Items? items;

  Authorities({this.type, this.items});

  factory Authorities.fromJson(Map<String, dynamic> json) {
    return _$AuthoritiesFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AuthoritiesToJson(this);
}
