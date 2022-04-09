import 'package:json_annotation/json_annotation.dart';

import 'get.dart';
import 'post.dart';
import 'put.dart';

part 'api_service_executive_ratings.g.dart';

@JsonSerializable()
class ApiServiceExecutiveRatings {
  @JsonKey(name: 'get')
  Get? apiServiceExecutiveRatingsGet;
  Post? post;
  Put? put;

  ApiServiceExecutiveRatings({
    this.apiServiceExecutiveRatingsGet,
    this.post,
    this.put,
  });

  factory ApiServiceExecutiveRatings.fromJson(Map<String, dynamic> json) {
    return _$ApiServiceExecutiveRatingsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApiServiceExecutiveRatingsToJson(this);
}
