import 'package:json_annotation/json_annotation.dart';

part 'customer_rank.g.dart';

@JsonSerializable()
class CustomerRank {
  String? type;

  CustomerRank({this.type});

  factory CustomerRank.fromJson(Map<String, dynamic> json) {
    return _$CustomerRankFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CustomerRankToJson(this);
}
