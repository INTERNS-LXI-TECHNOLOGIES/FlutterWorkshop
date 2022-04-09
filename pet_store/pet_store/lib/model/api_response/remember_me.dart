import 'package:json_annotation/json_annotation.dart';

part 'remember_me.g.dart';

@JsonSerializable()
class RememberMe {
  String? type;

  RememberMe({this.type});

  factory RememberMe.fromJson(Map<String, dynamic> json) {
    return _$RememberMeFromJson(json);
  }

  Map<String, dynamic> toJson() => _$RememberMeToJson(this);
}
