import 'package:json_annotation/json_annotation.dart';

import 'get.dart';
import 'post.dart';
import 'put.dart';

part 'api_extended_warranties.g.dart';

@JsonSerializable()
class ApiExtendedWarranties {
  @JsonKey(name: 'get')
  Get? apiExtendedWarrantiesGet;
  Post? post;
  Put? put;

  ApiExtendedWarranties({
    this.apiExtendedWarrantiesGet,
    this.post,
    this.put,
  });

  factory ApiExtendedWarranties.fromJson(Map<String, dynamic> json) {
    return _$ApiExtendedWarrantiesFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApiExtendedWarrantiesToJson(this);
}
