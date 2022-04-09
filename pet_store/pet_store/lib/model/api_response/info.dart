import 'package:json_annotation/json_annotation.dart';

import 'contact.dart';
import 'license.dart';

part 'info.g.dart';

@JsonSerializable()
class Info {
  String? description;
  String? version;
  String? title;
  Contact? contact;
  License? license;

  Info({
    this.description,
    this.version,
    this.title,
    this.contact,
    this.license,
  });

  factory Info.fromJson(Map<String, dynamic> json) => _$InfoFromJson(json);

  Map<String, dynamic> toJson() => _$InfoToJson(this);
}
