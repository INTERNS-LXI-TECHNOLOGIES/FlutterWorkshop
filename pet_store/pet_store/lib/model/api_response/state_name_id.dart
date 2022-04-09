import 'package:json_annotation/json_annotation.dart';

part 'state_name_id.g.dart';

@JsonSerializable()
class StateNameId {
  String? type;
  String? format;

  StateNameId({this.type, this.format});

  factory StateNameId.fromJson(Map<String, dynamic> json) {
    return _$StateNameIdFromJson(json);
  }

  Map<String, dynamic> toJson() => _$StateNameIdToJson(this);
}
