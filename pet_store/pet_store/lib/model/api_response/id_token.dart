import 'package:json_annotation/json_annotation.dart';

part 'id_token.g.dart';

@JsonSerializable()
class IdToken {
  String? type;

  IdToken({this.type});

  factory IdToken.fromJson(Map<String, dynamic> json) {
    return _$IdTokenFromJson(json);
  }

  Map<String, dynamic> toJson() => _$IdTokenToJson(this);
}
