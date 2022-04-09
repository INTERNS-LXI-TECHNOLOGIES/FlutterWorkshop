import 'package:json_annotation/json_annotation.dart';

import 'get.dart';
import 'post.dart';
import 'put.dart';

part 'api_customer_addresses.g.dart';

@JsonSerializable()
class ApiCustomerAddresses {
  @JsonKey(name: 'get')
  Get? apiCustomerAddressesGet;
  Post? post;
  Put? put;

  ApiCustomerAddresses({this.apiCustomerAddressesGet, this.post, this.put});

  factory ApiCustomerAddresses.fromJson(Map<String, dynamic> json) {
    return _$ApiCustomerAddressesFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApiCustomerAddressesToJson(this);
}
