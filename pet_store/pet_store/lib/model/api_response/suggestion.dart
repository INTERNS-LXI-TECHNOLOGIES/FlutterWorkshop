import 'package:json_annotation/json_annotation.dart';

part 'suggestion.g.dart';

@JsonSerializable()
class Suggestion {
  String? type;

  Suggestion({this.type});

  factory Suggestion.fromJson(Map<String, dynamic> json) {
    return _$SuggestionFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SuggestionToJson(this);
}
