import 'package:json_annotation/json_annotation.dart';

import 'properties.dart';

part 'key_and_password_vm.g.dart';

@JsonSerializable()
class KeyAndPasswordVm {
  String? type;
  Properties? properties;
  String? title;

  KeyAndPasswordVm({this.type, this.properties, this.title});

  factory KeyAndPasswordVm.fromJson(Map<String, dynamic> json) {
    return _$KeyAndPasswordVmFromJson(json);
  }

  Map<String, dynamic> toJson() => _$KeyAndPasswordVmToJson(this);
}
