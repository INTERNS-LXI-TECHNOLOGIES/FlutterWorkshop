import 'package:json_annotation/json_annotation.dart';

part 'quality_of_service.g.dart';

@JsonSerializable()
class QualityOfService {
  String? type;
  String? format;

  QualityOfService({this.type, this.format});

  factory QualityOfService.fromJson(Map<String, dynamic> json) {
    return _$QualityOfServiceFromJson(json);
  }

  Map<String, dynamic> toJson() => _$QualityOfServiceToJson(this);
}
