import 'package:json_annotation/json_annotation.dart';

import 'properties.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  String? type;
  List<String>? required;
  Properties? properties;
  String? title;

  User({this.type, this.required, this.properties, this.title});

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
