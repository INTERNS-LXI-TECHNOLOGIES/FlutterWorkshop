import 'package:json_annotation/json_annotation.dart';

part 'esquire_id.g.dart';

@JsonSerializable()
class EsquireId {
  String? type;
  String? pattern;

  EsquireId({this.type, this.pattern});

  factory EsquireId.fromJson(Map<String, dynamic> json) {
    return _$EsquireIdFromJson(json);
  }

  Map<String, dynamic> toJson() => _$EsquireIdToJson(this);
}
