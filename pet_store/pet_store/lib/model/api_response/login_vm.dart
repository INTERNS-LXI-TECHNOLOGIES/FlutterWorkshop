import 'package:json_annotation/json_annotation.dart';

import 'properties.dart';

part 'login_vm.g.dart';

@JsonSerializable()
class LoginVm {
  String? type;
  List<String>? required;
  Properties? properties;
  String? title;

  LoginVm({this.type, this.required, this.properties, this.title});

  factory LoginVm.fromJson(Map<String, dynamic> json) {
    return _$LoginVmFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LoginVmToJson(this);
}
