import 'package:json_annotation/json_annotation.dart';

import 'delete.dart';
import 'get.dart';

part 'api_customer_addresses_id.g.dart';

@JsonSerializable()
class ApiCustomerAddressesId {
  @JsonKey(name: 'get')
  Get? apiCustomerAddressesIdGet;
  Delete? delete;

  ApiCustomerAddressesId({this.apiCustomerAddressesIdGet, this.delete});

  factory ApiCustomerAddressesId.fromJson(Map<String, dynamic> json) {
    return _$ApiCustomerAddressesIdFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApiCustomerAddressesIdToJson(this);
}
