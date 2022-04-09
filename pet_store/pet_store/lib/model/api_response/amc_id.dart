import 'package:json_annotation/json_annotation.dart';

part 'amc_id.g.dart';

@JsonSerializable()
class AmcId {
  String? type;
  String? format;

  AmcId({this.type, this.format});

  factory AmcId.fromJson(Map<String, dynamic> json) => _$AmcIdFromJson(json);

  Map<String, dynamic> toJson() => _$AmcIdToJson(this);
}
