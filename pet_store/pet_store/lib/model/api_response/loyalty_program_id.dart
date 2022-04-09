import 'package:json_annotation/json_annotation.dart';

part 'loyalty_program_id.g.dart';

@JsonSerializable()
class LoyaltyProgramId {
  String? type;
  String? format;

  LoyaltyProgramId({this.type, this.format});

  factory LoyaltyProgramId.fromJson(Map<String, dynamic> json) {
    return _$LoyaltyProgramIdFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LoyaltyProgramIdToJson(this);
}
