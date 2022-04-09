import 'package:json_annotation/json_annotation.dart';

import 'get.dart';
import 'post.dart';
import 'put.dart';

part 'api_service_executives.g.dart';

@JsonSerializable()
class ApiServiceExecutives {
  @JsonKey(name: 'get')
  Get? apiServiceExecutivesGet;
  Post? post;
  Put? put;

  ApiServiceExecutives({this.apiServiceExecutivesGet, this.post, this.put});

  factory ApiServiceExecutives.fromJson(Map<String, dynamic> json) {
    return _$ApiServiceExecutivesFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApiServiceExecutivesToJson(this);
}
