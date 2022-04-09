import 'package:json_annotation/json_annotation.dart';

import 'properties.dart';

part 'managed_user_vm.g.dart';

@JsonSerializable()
class ManagedUserVm {
  String? type;
  Properties? properties;
  String? title;

  ManagedUserVm({this.type, this.properties, this.title});

  factory ManagedUserVm.fromJson(Map<String, dynamic> json) {
    return _$ManagedUserVmFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ManagedUserVmToJson(this);
}
