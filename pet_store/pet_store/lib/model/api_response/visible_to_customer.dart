import 'package:json_annotation/json_annotation.dart';

part 'visible_to_customer.g.dart';

@JsonSerializable()
class VisibleToCustomer {
  String? type;

  VisibleToCustomer({this.type});

  factory VisibleToCustomer.fromJson(Map<String, dynamic> json) {
    return _$VisibleToCustomerFromJson(json);
  }

  Map<String, dynamic> toJson() => _$VisibleToCustomerToJson(this);
}
