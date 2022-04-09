import 'package:json_annotation/json_annotation.dart';

import 'delete.dart';
import 'get.dart';

part 'api_service_executive_ratings_id.g.dart';

@JsonSerializable()
class ApiServiceExecutiveRatingsId {
  @JsonKey(name: 'get')
  Get? apiServiceExecutiveRatingsIdGet;
  Delete? delete;

  ApiServiceExecutiveRatingsId({
    this.apiServiceExecutiveRatingsIdGet,
    this.delete,
  });

  factory ApiServiceExecutiveRatingsId.fromJson(Map<String, dynamic> json) {
    return _$ApiServiceExecutiveRatingsIdFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApiServiceExecutiveRatingsIdToJson(this);
}
